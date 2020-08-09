@ECHO off

ECHO Deleting intermediate files

REM variable definitions
	SET BINDIR=build
	SET LIBDIR=libs
	SET SRCDIR=source
	SET OUTDIR=.
	SET DELETE_FILE=DEL /F

REM clean special files
	%DELETE_FILE% %OUTDIR%\__init_module.kr.h.c
	%DELETE_FILE% %OUTDIR%\__init_module.kr.h.o
	%DELETE_FILE% %OUTDIR%\*.krdata
	%DELETE_FILE% %OUTDIR%\*.krlink
	%DELETE_FILE% %BINDIR%\*.exe
	REM %DELETE_FILE% %LIBDIR%/*.*

REM clean intermediate object/source files
	%DELETE_FILE% %SRCDIR%\*.o
	%DELETE_FILE% %SRCDIR%\*.kr.c
	%DELETE_FILE% %SRCDIR%\Models\*.o
	%DELETE_FILE% %SRCDIR%\Models\*.kr.c
	%DELETE_FILE% %SRCDIR%\Pages\*.o
	%DELETE_FILE% %SRCDIR%\Pages\*.kr.c

	PAUSE
