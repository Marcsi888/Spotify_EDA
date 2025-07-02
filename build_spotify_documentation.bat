@echo off
echo Building Spotify Analysis LaTeX documentation...

REM Check if pdflatex is available
where pdflatex >nul 2>nul
if %errorlevel% neq 0 (
    echo Error: pdflatex not found. Please install a LaTeX distribution like MiKTeX or TeX Live.
    echo Download MiKTeX from: https://miktex.org/download
    echo Download TeX Live from: https://www.tug.org/texlive/
    pause
    exit /b 1
)

REM Check if the source file exists
if not exist "spotify_analysis_documentation.tex" (
    echo Error: spotify_analysis_documentation.tex not found!
    echo Please ensure the file exists in the current directory.
    pause
    exit /b 1
)

REM Build the documentation
echo Compiling spotify_analysis_documentation.tex...
pdflatex -interaction=nonstopmode spotify_analysis_documentation.tex
if %errorlevel% neq 0 (
    echo Error: First compilation failed.
    pause
    exit /b 1
)

echo Running second compilation for references...
pdflatex -interaction=nonstopmode spotify_analysis_documentation.tex

if exist "spotify_analysis_documentation.pdf" (
    echo Documentation built successfully!
    echo Output file: spotify_analysis_documentation.pdf
    
    REM Get file size
    for %%A in (spotify_analysis_documentation.pdf) do echo File size: %%~zA bytes
    
    set /p openPDF="Would you like to open the PDF? (y/n): "
    if /i "%openPDF%"=="y" (
        start spotify_analysis_documentation.pdf
        echo PDF opened successfully!
    )
) else (
    echo Error: PDF file was not created.
)

pause 