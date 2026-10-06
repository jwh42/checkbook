@ECHO off

ECHO Deleting intermediate files

REM variable definitions
  SET BINDIR=build
  SET LIBDIR=libs
  SET SRCDIR=source
  SET OUTDIR=.

REM clean special files
  DEL %OUTDIR%\__init_module.kr.h.c
  DEL %OUTDIR%\__init_module.kr.h.o
  DEL %OUTDIR%\*.krdata
  DEL %OUTDIR%\*.krlink
  DEL %BINDIR%\*.exe

REM clean intermediate object/source files
  DEL /S /Q %SRCDIR%\*.o
  DEL /S /Q %SRCDIR%\*.kr.c
