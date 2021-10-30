@echo off

echo Unpacking sound files...

copy DRIZZTSAGA\oggdec.exe override\oggdec.exe /y
cd override
oggdec *.ogg
del *.ogg
del oggdec.exe
cd..

echo.
echo Installation finished.
echo.
pause
