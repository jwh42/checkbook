@echo off

IF EXIST build\checkbook.exe goto RUN_PROGRAM
	compile_checkbook.cmd

:RUN_PROGRAM
	pushd build
	checkbook.exe
	popd
