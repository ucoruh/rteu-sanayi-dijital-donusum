@echo off
:: Script to generate changelog files with commit links and headers
:: Save output to index.en.md and index.tr.md

:: Set Git repository URL (change this to your actual repository)
set repo_url=https://github.com/coruhtech/kosgeb-rize/commit/

:: Create English changelog
set output_file=index.en.md
if exist %output_file% del %output_file%

:: Write the header to the English changelog file
echo --- >> %output_file%
echo template: main.html >> %output_file%
echo --- >> %output_file%
echo. >> %output_file%
echo # Changelog >> %output_file%
echo. >> %output_file%

:: Append git log to English changelog file with commit links
echo Generating English changelog with commit links...
for /f "tokens=1,2,* delims=|" %%A in ('git log --pretty=format:"%%h|%%ad|%%s" --date=short') do (
    echo ## Commit: [%%A](%repo_url%%%A) >> %output_file%
    echo **Date:** %%B >> %output_file%
    echo **Message:** %%C >> %output_file%
    echo. >> %output_file%
    echo ------------------------------ >> %output_file%
    echo. >> %output_file%
)

:: Create Turkish changelog
set output_file=index.tr.md
if exist %output_file% del %output_file%

:: Write the header to the Turkish changelog file
echo --- >> %output_file%
echo template: main.html >> %output_file%
echo --- >> %output_file%
echo. >> %output_file%
echo # Değişiklik Günlüğü >> %output_file%
echo. >> %output_file%

:: Append git log to Turkish changelog file with commit links
echo Generating Turkish changelog with commit links...
for /f "tokens=1,2,* delims=|" %%A in ('git log --pretty=format:"%%h|%%ad|%%s" --date=short') do (
    echo ## Commit: [%%A](%repo_url%%%A) >> %output_file%
    echo **Tarih:** %%B >> %output_file%
    echo **Mesaj:** %%C >> %output_file%
    echo. >> %output_file%
    echo ------------------------------ >> %output_file%
    echo. >> %output_file%
)

:: Indicate success
echo Changelogs generated successfully in index.en.md and index.tr.md
pause
