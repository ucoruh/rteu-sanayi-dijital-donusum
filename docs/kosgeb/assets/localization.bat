@echo off
REM Konsolu UTF-8 moduna alarak Türkçe karakter desteği sağlar
chcp 65001 >nul

setlocal enabledelayedexpansion

REM Script'in çalıştığı dizini belirle
set "workdir=%~dp0"
cd /d "%workdir%"

REM Çalıştığı dizindeki tüm dosyaları döngüye al
for %%f in (*.*) do (
    REM Dosya ismini ve uzantısını ayır
    set "filename=%%~nf"
    set "extension=%%~xf"

    REM Eğer dosya bir klasör değilse, kopyalama işlemi yap
    if not exist "%%~dpn0\%%f\" (
        REM Dosya adı ve uzantıya .en ve .tr ekleyerek kopyalar oluştur
        copy "%%f" "!filename!.en!extension!"
        copy "%%f" "!filename!.tr!extension!"
    )
)

echo Tüm dosyaların .en ve .tr uzantılı kopyaları oluşturuldu.
pause
