@ECHO OFF

ECHO Minifying JPG images...

FOR /R %%a IN (*.jpg) DO (
	ECHO %%~a...

	magick convert "%%~a" ^
		-resize 500x500^> ^
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
