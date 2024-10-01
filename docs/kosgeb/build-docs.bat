@echo off
@setlocal enableextensions
@cd /d "%~dp0"

REM Doğrudan sabit dosya isimleriyle Marp kullanımı
marp "girisimcilik-giris.marp.en.md" --html -o "girisimcilik-giris.marp.en.html" --allow-local-files
marp "girisimcilik-giris.marp.en.md" --pdf -o "girisimcilik-giris.marp.en.pdf" --allow-local-files
marp "girisimcilik-giris.marp.en.md" --pptx -o "girisimcilik-giris.marp.en.pptx" --allow-local-files

marp "girisimcilik-giris.marp.tr.md" --html -o "girisimcilik-giris.marp.tr.html" --allow-local-files
marp "girisimcilik-giris.marp.tr.md" --pdf -o "girisimcilik-giris.marp.tr.pdf" --allow-local-files
marp "girisimcilik-giris.marp.tr.md" --pptx -o "girisimcilik-giris.marp.tr.pptx" --allow-local-files

REM Doğrudan sabit dosya isimleriyle Pandoc kullanımı
pandoc "girisimcilik-giris.pandoc.en.md" --pdf-engine=xelatex -f markdown-implicit_figures -V colorlinks -V urlcolor=NavyBlue -V toccolor=Red --toc -N -o "girisimcilik-giris.pandoc.en.pdf"
pandoc "girisimcilik-giris.pandoc.en.md" -o "girisimcilik-giris.pandoc.en.docx" -f markdown -t docx
REM pandoc "girisimcilik-giris.pandoc.en.md" -o "girisimcilik-giris.pandoc.en.pptx" -f markdown -t pptx

pandoc "girisimcilik-giris.pandoc.tr.md" --pdf-engine=xelatex -f markdown-implicit_figures -V colorlinks -V urlcolor=NavyBlue -V toccolor=Red --toc -N -o "girisimcilik-giris.pandoc.tr.pdf"
pandoc "girisimcilik-giris.pandoc.tr.md" -o "girisimcilik-giris.pandoc.tr.docx" -f markdown -t docx
REM pandoc "girisimcilik-giris.pandoc.tr.md" -o "girisimcilik-giris.pandoc.tr.pptx" -f markdown -t pptx

pause
