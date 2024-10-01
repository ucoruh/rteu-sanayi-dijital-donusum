@echo off
:: This script converts all .webp images in the current directory to .png
:: using ImageMagick's magick command.  choco install imagemagick

echo Converting all .webp images to .png...

:: Loop through all .webp files in the current directory
for %%f in (*.webp) do (
    echo Processing %%f...
    
    :: Convert the image from .webp to .png with a white background
    magick "%%f" -background white -flatten "%%~nf.png"
    
    echo Conversion complete: %%~nf.png
)

echo All conversions are complete.
pause
