Write-Host "Building Spotify Analysis LaTeX documentation..." -ForegroundColor Green

# Checking if pdflatex is available
try {
    $pdflatexPath = Get-Command pdflatex -ErrorAction Stop
    Write-Host "Found pdflatex at: $($pdflatexPath.Source)" -ForegroundColor Yellow
} catch {
    Write-Host "Error: pdflatex not found. Please install a LaTeX distribution like MiKTeX or TeX Live." -ForegroundColor Red
    Write-Host "Download MiKTeX from: https://miktex.org/download" -ForegroundColor Cyan
    Write-Host "Download TeX Live from: https://www.tug.org/texlive/" -ForegroundColor Cyan
    Read-Host "Press Enter to continue"
    exit 1
}

# Check if the source file exists
if (-not (Test-Path "spotify_analysis_documentation.tex")) {
    Write-Host "Error: spotify_analysis_documentation.tex not found!" -ForegroundColor Red
    Write-Host "Please ensure the file exists in the current directory." -ForegroundColor Yellow
    Read-Host "Press Enter to continue"
    exit 1
}

# Build the documentation
Write-Host "Compiling spotify_analysis_documentation.tex..." -ForegroundColor Yellow
$result = & pdflatex -interaction=nonstopmode spotify_analysis_documentation.tex 2>&1

if ($LASTEXITCODE -ne 0) {
    Write-Host "Error: First compilation failed." -ForegroundColor Red
    Write-Host "LaTeX output:" -ForegroundColor Yellow
    Write-Host $result
    Read-Host "Press Enter to continue"
    exit 1
}

Write-Host "Running second compilation for references..." -ForegroundColor Yellow
& pdflatex -interaction=nonstopmode spotify_analysis_documentation.tex | Out-Null

if (Test-Path "spotify_analysis_documentation.pdf") {
    Write-Host "Documentation built successfully!" -ForegroundColor Green
    Write-Host "Output file: spotify_analysis_documentation.pdf" -ForegroundColor Cyan
    
    # Get file size
    $fileSize = (Get-Item "spotify_analysis_documentation.pdf").Length
    $fileSizeKB = [math]::Round($fileSize / 1KB, 2)
    Write-Host "File size: $fileSizeKB KB" -ForegroundColor Cyan
    
    # Open the PDF if possible
    $openPDF = Read-Host "Would you like to open the PDF? (y/n)"
    if ($openPDF -eq 'y' -or $openPDF -eq 'Y') {
        try {
            Start-Process "spotify_analysis_documentation.pdf"
            Write-Host "PDF opened successfully!" -ForegroundColor Green
        } catch {
            Write-Host "Could not open PDF automatically. Please open it manually." -ForegroundColor Yellow
        }
    }
} else {
    Write-Host "Error: PDF file was not created." -ForegroundColor Red
}

Read-Host "Press Enter to continue" 