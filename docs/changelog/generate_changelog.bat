@echo off
:: Set Git repository URL (change this to your actual repository)
set repo_url=https://github.com/coruhtech/kosgeb-rize/commit/

:: Create English changelog file
set output_file_en=index.en.md
if exist %output_file_en% del %output_file_en%

:: Write the header to the English changelog file without leaving extra spaces
(
    set /p="---" <nul >> %output_file_en%
    echo. >> %output_file_en%
    set /p="template: home.html" <nul >> %output_file_en%
    echo. >> %output_file_en%
    set /p="title: ChangeLog" <nul >> %output_file_en%
    echo. >> %output_file_en%
    set /p="---" <nul >> %output_file_en%
    echo. >> %output_file_en%
)

:: Append git log to English changelog file with correct variable usage
echo Generating English changelog...
git log --pretty=format:"## Commit: [%%h](%repo_url%%%h)" --date=short >> %output_file_en%
git log --pretty=format:"**Date:** %%ad" --date=short >> %output_file_en%
git log --pretty=format:"**Message:** %%s" --date=short >> %output_file_en%

:: Create Turkish changelog file
set output_file_tr=index.tr.md
if exist %output_file_tr% del %output_file_tr%

:: Write the header to the Turkish changelog file without leaving extra spaces
(
    set /p="---" <nul >> %output_file_tr%
    echo. >> %output_file_tr%
    set /p="template: home.html" <nul >> %output_file_tr%
    echo. >> %output_file_tr%
    set /p="title: Değişiklik Günlüğü" <nul >> %output_file_tr%
    echo. >> %output_file_tr%
    set /p="---" <nul >> %output_file_tr%
    echo. >> %output_file_tr%
)

:: Append git log to Turkish changelog file with correct variable usage
echo Generating Turkish changelog...
git log --pretty=format:"## Commit: [%%h](%repo_url%%%h)" --date=short >> %output_file_tr%
git log --pretty=format:"**Tarih:** %%ad" --date=short >> %output_file_tr%
git log --pretty=format:"**Mesaj:** %%s" --date=short >> %output_file_tr%

pause
