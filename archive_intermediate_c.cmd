@ECHO off

FOR /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') DO SET datetime=%%I
SET "YYYY=%datetime:~0,4%"
SET "MM=%datetime:~4,2%"
SET "DD=%datetime:~6,2%"
SET "FILEDATE=%YYYY%-%MM%-%DD%"

zip -0 -r intermediate-c.ark.zip . -i *.c
zip -9 imed\%FILEDATE%-intermediate-c.zip intermediate-c.ark.zip
DEL intermediate-c.ark.zip
