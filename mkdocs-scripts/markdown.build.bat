@echo off
@setlocal enableextensions
@cd /d "%~dp0"

REM Move up one level from mkdocs-scripts to the parent directory
cd ..

REM Search recursively in subdirectories under "docs" for all .md files
for /r "%cd%\docs" %%f in (*.md) do (
    REM Skip .md files directly under docs, only process subfolders
    if not "%%~dpf"=="%cd%\docs\" (

        echo Processing file: %%f

        REM Extract base filename without extension
        set "baseName=%%~nf"

        REM Determine if the file is in English or Turkish by checking the filename
        if "%%~xf"==".en.md" (
            set "suffix=en"
        ) else if "%%~xf"==".tr.md" (
            set "suffix=tr"
        ) else (
            set "suffix=unknown"
        )

        REM Generate HTML, PDF, and PPTX slides using Marp with the desired filename format
        Powershell.exe marp "%%f" --html --pdf -o "%%~dpn%%~nf.marp.%suffix%.pdf" --allow-local-files
        Powershell.exe marp "%%f" --html -o "%%~dpn%%~nf.marp.%suffix%.html" --allow-local-files
        Powershell.exe marp "%%f" --pptx -o "%%~dpn%%~nf.marp.%suffix%.pptx" --allow-local-files

        REM Generate DOCX and PDF documents using Pandoc with the desired filename format
        Powershell.exe pandoc "%%f" --pdf-engine=xelatex -f markdown-implicit_figures -V colorlinks -V urlcolor=NavyBlue -V toccolor=Red --toc -N -o "%%~dpn%%~nf.pandoc.%suffix%.pdf"
        Powershell.exe pandoc -o "%%~dpn%%~nf.pandoc.%suffix%.docx" -f markdown -t docx "%%f"
        Powershell.exe pandoc -o "%%~dpn%%~nf.pandoc.%suffix%.pptx" -f markdown -t pptx "%%f"
    )
)

echo Revert to the original directory
cd "%currentDir%"

pause
