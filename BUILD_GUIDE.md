# 📄 Documentation Build Guide

This guide explains how to build the LaTeX documentation for the Spotify Data Analysis Project.

## 📋 Available Documentation Files

The project includes two LaTeX documentation files:

| File | Description | Build Scripts |
|------|-------------|---------------|
| `documentation.tex` | General project documentation | `build_documentation.ps1`, `build_documentation.bat`, `build_documentation.sh` |
| `spotify_analysis_documentation.tex` | Spotify-specific analysis documentation | `build_spotify_documentation.ps1`, `build_spotify_documentation.bat` |

## 🛠️ Available Build Scripts

The project includes multiple build scripts for different operating systems and documentation files:

### For `documentation.tex`:
| Script | Platform | Description |
|--------|----------|-------------|
| `build_documentation.ps1` | Windows PowerShell | **Recommended** - Enhanced PowerShell script with colored output |
| `build_documentation.bat` | Windows Command Prompt | Traditional batch file |
| `build_documentation.sh` | Unix/Linux/macOS | Bash script for Unix-like systems |

### For `spotify_analysis_documentation.tex`:
| Script | Platform | Description |
|--------|----------|-------------|
| `build_spotify_documentation.ps1` | Windows PowerShell | **Recommended** - Enhanced PowerShell script with colored output |
| `build_spotify_documentation.bat` | Windows Command Prompt | Traditional batch file |

## 🚀 How to Run

### Building `documentation.tex`

#### Windows PowerShell (Recommended)
```powershell
# Method 1: Direct execution (if execution policy allows)
.\build_documentation.ps1

# Method 2: With execution policy bypass (if blocked)
powershell -ExecutionPolicy Bypass -File build_documentation.ps1

# Method 3: Using cmd to run batch file
cmd /c build_documentation.bat
```

#### Windows Command Prompt
```cmd
build_documentation.bat
```

#### Unix/Linux/macOS
```bash
# Make executable (first time only)
chmod +x build_documentation.sh

# Run the script
./build_documentation.sh
```

### Building `spotify_analysis_documentation.tex`

#### Windows PowerShell (Recommended)
```powershell
# Method 1: Direct execution (if execution policy allows)
.\build_spotify_documentation.ps1

# Method 2: With execution policy bypass (if blocked)
powershell -ExecutionPolicy Bypass -File build_spotify_documentation.ps1

# Method 3: Using cmd to run batch file
cmd /c build_spotify_documentation.bat
```

#### Windows Command Prompt
```cmd
build_spotify_documentation.bat
```

## 📊 Manual Compilation

If you prefer to compile manually or want to use a different LaTeX editor:

### For `documentation.tex`:
```bash
pdflatex -interaction=nonstopmode documentation.tex
pdflatex -interaction=nonstopmode documentation.tex
```

### For `spotify_analysis_documentation.tex`:
```bash
pdflatex -interaction=nonstopmode spotify_analysis_documentation.tex
pdflatex -interaction=nonstopmode spotify_analysis_documentation.tex
```

## ⚠️ Common Issues & Solutions

### Issue 1: "pdflatex not found"

**Error Message:**
```
Error: pdflatex not found. Please install a LaTeX distribution like MiKTeX or TeX Live.
```

**Solution:**
Install a LaTeX distribution:

#### Option A: MiKTeX (Windows - Recommended)
1. Go to [miktex.org/download](https://miktex.org/download)
2. Download the installer for Windows
3. Run the installer and follow the setup wizard
4. Restart your terminal after installation

#### Option B: TeX Live (Cross-platform)
1. Go to [tug.org/texlive](https://www.tug.org/texlive/)
2. Download the installer for your platform
3. Install and add to PATH if needed

#### Option C: Overleaf (Online - No Installation)
1. Go to [overleaf.com](https://www.overleaf.com)
2. Create a free account
3. Upload either `documentation.tex` or `spotify_analysis_documentation.tex`
4. Compile online

### Issue 2: PowerShell Execution Policy Error

**Error Message:**
```
File cannot be loaded because running scripts is disabled on this system.
```

**Solution:**
```powershell
# Method 1: Run with bypass (recommended)
powershell -ExecutionPolicy Bypass -File build_documentation.ps1
# or
powershell -ExecutionPolicy Bypass -File build_spotify_documentation.ps1

# Method 2: Use batch file instead
cmd /c build_documentation.bat
# or
cmd /c build_spotify_documentation.bat
```

### Issue 3: LaTeX Compilation Errors

**Common Causes:**
- Missing LaTeX packages
- Syntax errors in the .tex file
- Encoding issues

**Solutions:**
1. **Install missing packages** (MiKTeX will prompt automatically)
2. **Check LaTeX syntax** in the .tex file
3. **Use UTF-8 encoding** for the .tex file

## 📋 Prerequisites Checklist

Before building the documentation, ensure you have:

- [ ] **LaTeX Distribution** installed (MiKTeX, TeX Live, or Overleaf)
- [ ] **Python** installed (for running the analysis notebooks)
- [ ] **Git** installed (for version control)
- [ ] **Text Editor** with LaTeX support (VS Code, TeXstudio, etc.)

## 🎯 Expected Output

After successful compilation, you should see:

### For `documentation.tex`:
```
Building LaTeX documentation...
Found pdflatex at: C:\Program Files\MiKTeX\miktex\bin\x64\pdflatex.exe
Compiling documentation.tex...
Running second compilation for references...
Documentation built successfully!
Output file: documentation.pdf
File size: 245.67 KB
```

### For `spotify_analysis_documentation.tex`:
```
Building Spotify Analysis LaTeX documentation...
Found pdflatex at: C:\Program Files\MiKTeX\miktex\bin\x64\pdflatex.exe
Compiling spotify_analysis_documentation.tex...
Running second compilation for references...
Documentation built successfully!
Output file: spotify_analysis_documentation.pdf
File size: 245.67 KB
Would you like to open the PDF? (y/n):
```

## 📁 Generated Files

The build process creates several files for each documentation:

### For `documentation.tex`:
| File | Description |
|------|-------------|
| `documentation.pdf` | **Main output** - Complete project documentation |
| `documentation.aux` | Auxiliary file (can be deleted) |
| `documentation.log` | Compilation log (useful for debugging) |
| `documentation.toc` | Table of contents (can be deleted) |

### For `spotify_analysis_documentation.tex`:
| File | Description |
|------|-------------|
| `spotify_analysis_documentation.pdf` | **Main output** - Spotify-specific documentation |
| `spotify_analysis_documentation.aux` | Auxiliary file (can be deleted) |
| `spotify_analysis_documentation.log` | Compilation log (useful for debugging) |
| `spotify_analysis_documentation.toc` | Table of contents (can be deleted) |

## 🔧 Troubleshooting

### If the build fails:

1. **Check the log file**: Open the corresponding `.log` file for detailed error messages
2. **Verify LaTeX installation**: Run `pdflatex --version` in terminal
3. **Update LaTeX packages**: Run `mpm --update` (MiKTeX) or `tlmgr update --all` (TeX Live)
4. **Check file encoding**: Ensure the .tex file is saved in UTF-8

### Getting Help

If you encounter issues not covered here:

1. Check the [LaTeX documentation](https://www.latex-project.org/help/)
2. Search for your specific error message online
3. Create an issue in the project repository

## 🎉 Success!

Once you have the PDF files, you can:

- **View them** in any PDF reader
- **Print them** for physical reference
- **Share them** with others
- **Use them** for academic or professional purposes

Both PDFs contain comprehensive documentation of the Spotify Data Analysis Project, including methodology, results, and technical implementation details. 