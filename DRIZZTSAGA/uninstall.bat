@echo off
@echo Uninstalling area BIFF...

call DRIZZTSAGA\deldir DZTS-ARE > nul

IF EXIST DATA\DZTS-ARE.bif GOTO REMOVEBIF

GOTO END

:REMOVEBIF

copy Setup-drizztsaga.exe weidu.exe /y
copy chitin.key DRIZZTSAGA\chitin.bak2 /y
weidu --remove-biff DATA\DZTS-ARE.bif
del DATA\DZTS-ARE.bif

:END