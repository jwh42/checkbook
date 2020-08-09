@echo off

SET SRCDIR=source

echo libs\Krypton.krlink
echo libs\Krypton.UI.krlink
echo libs\Krypton.Graphics.krlink

unix-find %SRCDIR% ( -name "*.kr" )
