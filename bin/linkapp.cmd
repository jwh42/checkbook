@echo off

SET SRCDIR=source
SET EXENAME=%1
SET MODS=%2
SET SRTWIN=libs/kr-win32-start-win.module
SET LINKOPT=-x -s -S -O -nostdlib --disable-auto-import -Bdynamic --subsystem windows

SET LIBS=build/extlibs.dll
SET LIBS=%LIBS% libs/libkernel32.a
SET LIBS=%LIBS% libs/libkernel32.a
SET LIBS=%LIBS% libs/Krypton.lib
SET LIBS=%LIBS% libs/Krypton.Graphics.lib
SET LIBS=%LIBS% libs/Krypton.UI.lib

SET MODS=%SRCDIR%/*.o
SET MODS=%MODS% %SRCDIR%/Models/*.o
SET MODS=%MODS% %SRCDIR%/Pages/*.o

ld %LINKOPT% -o build/%EXENAME%.exe %SRTWIN% __init_module.kr.h.o %MODS% %LIBS%
