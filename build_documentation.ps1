Write-Host "Building LaTeX documentation..." -ForegroundColor Green

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

# Build the documentation
Write-Host "Compiling documentation.tex..." -ForegroundColor Yellow
$result = & pdflatex -interaction=nonstopmode documentation.tex 2>&1

if ($LASTEXITCODE -ne 0) {
    Write-Host "Error: First compilation failed." -ForegroundColor Red
    Write-Host "LaTeX output:" -ForegroundColor Yellow
    Write-Host $result
    Read-Host "Press Enter to continue"
    exit 1
}

Write-Host "Running second compilation for references..." -ForegroundColor Yellow
& pdflatex -interaction=nonstopmode documentation.tex | Out-Null

if (Test-Path "documentation.pdf") {
    Write-Host "Documentation built successfully!" -ForegroundColor Green
    Write-Host "Output file: documentation.pdf" -ForegroundColor Cyan
    
    # Get file size
    $fileSize = (Get-Item "documentation.pdf").Length
    $fileSizeKB = [math]::Round($fileSize / 1KB, 2)
    Write-Host "File size: $fileSizeKB KB" -ForegroundColor Cyan
} else {
    Write-Host "Error: PDF file was not created." -ForegroundColor Red
}

Read-Host "Press Enter to continue" 