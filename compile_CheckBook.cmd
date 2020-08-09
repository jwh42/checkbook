@echo off

REM varibles
	REM SET KRFLAGS=-optimize
	SET KRFLAGS=
	SET EXENAME=CheckBook
	SET MAKEOPTS=DEBUG=true SUBSYS=windows
	SET OLDPATH=%PATH%
	SET PATH=%PATH%;bin

REM build the application
	echo Building %EXENAME% %MAKEOPTS%
	call listsrc %EXENAME% > krbuild.txt
	kryptonc %EXENAME% krbuild.txt %KRFLAGS%
	call linkapp %EXENAME%
	rm -f krbuild.txt

REM restore old PATH value
	SET PATH=%OLDPATH%

	echo .
	pause
