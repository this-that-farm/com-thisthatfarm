@ECHO OFF

ECHO Minifying JPG images...

FOR /R %%a IN (*.jpg) DO (
	magick convert "%%~a" ^
		-resize 900x900^> ^
		-strip ^
		-depth 8 ^
		-density 72 ^
		-alpha Remove ^
		-quality 80 ^
		-type optimize ^
		"%%~dpna.jpg"
)

ECHO Done!
PAUSE
