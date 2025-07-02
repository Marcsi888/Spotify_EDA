@echo off
echo Building LaTeX documentation...

REM Check if pdflatex is available
where pdflatex >nul 2>nul
if %errorlevel% neq 0 (
    echo Error: pdflatex not found. Please install a LaTeX distribution like MiKTeX or TeX Live.
    pause
    exit /b 1
)

REM Build the documentation
echo Compiling documentation.tex...
pdflatex -interaction=nonstopmode documentation.tex
if %errorlevel% neq 0 (
    echo Error: First compilation failed.
    pause
    exit /b 1
)

echo Running second compilation for references...
pdflatex -interaction=nonstopmode documentation.tex

echo Documentation built successfully!
echo Output file: documentation.pdf
pause 