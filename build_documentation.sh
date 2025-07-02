#!/bin/bash

echo "Building LaTeX documentation..."


if ! command -v pdflatex &> /dev/null; then
    echo "Error: pdflatex not found. Please install a LaTeX distribution like TeX Live."
    exit 1
fi

# Build the documentation
echo "Compiling documentation.tex..."
pdflatex -interaction=nonstopmode documentation.tex
if [ $? -ne 0 ]; then
    echo "Error: First compilation failed."
    exit 1
fi

echo "Running second compilation for references..."
pdflatex -interaction=nonstopmode documentation.tex

echo "Documentation built successfully!"
echo "Output file: documentation.pdf" 