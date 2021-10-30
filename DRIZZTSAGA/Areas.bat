@echo off

echo Unpacking area tilesets...

tisunpack -s -f -o DZTS-ARE/F_0111.tis DRIZZTSAGA/TIZ/#ar111.tiz
tisunpack -s -f -o DZTS-ARE/F_0112.tis DRIZZTSAGA/TIZ/#ar112.tiz
tisunpack -s -f -o DZTS-ARE/F_0113.tis DRIZZTSAGA/TIZ/#ar113.tiz
tisunpack -s -f -o DZTS-ARE/F_0114.tis DRIZZTSAGA/TIZ/#ar114.tiz
tisunpack -s -f -o DZTS-ARE/F_0115.tis DRIZZTSAGA/TIZ/#ar115.tiz
tisunpack -s -f -o DZTS-ARE/F_0222.tis DRIZZTSAGA/TIZ/#ar222.tiz
tisunpack -s -f -o DZTS-ARE/F_0223.tis DRIZZTSAGA/TIZ/#ar223.tiz
tisunpack -s -f -o DZTS-ARE/F_6661.tis DRIZZTSAGA/TIZ/ar6661.tiz
tisunpack -s -f -o DZTS-ARE/F_6664.tis DRIZZTSAGA/TIZ/ar6664.tiz
tisunpack -s -f -o DZTS-ARE/F_6666.tis DRIZZTSAGA/TIZ/ar6666.tiz
tisunpack -s -f -o DZTS-ARE/F_6667.tis DRIZZTSAGA/TIZ/ar6667.tiz
tisunpack -s -f -o DZTS-ARE/F_6668.tis DRIZZTSAGA/TIZ/ar6668.tiz
tisunpack -s -f -o DZTS-ARE/F_7777.tis DRIZZTSAGA/TIZ/ar7777.tiz
tisunpack -s -f -o DZTS-ARE/F_7778.tis DRIZZTSAGA/TIZ/ar7778.tiz
tisunpack -s -f -o DZTS-ARE/F_7779.tis DRIZZTSAGA/TIZ/ar7779.tiz
tisunpack -s -f -o DZTS-ARE/F_8888.tis DRIZZTSAGA/TIZ/ar8888.tiz
tisunpack -s -f -o DZTS-ARE/F_8889.tis DRIZZTSAGA/TIZ/ar8889.tiz
tisunpack -s -f -o DZTS-ARE/F_9191.tis DRIZZTSAGA/TIZ/ar9191.tiz
tisunpack -s -f -o DZTS-ARE/F_9292.tis DRIZZTSAGA/TIZ/ar9292.tiz
tisunpack -s -f -o DZTS-ARE/F_9393.tis DRIZZTSAGA/TIZ/ar9393.tiz
tisunpack -s -f -o DZTS-ARE/F_9494.tis DRIZZTSAGA/TIZ/ar9494.tiz
tisunpack -s -f -o DZTS-ARE/F_9595.tis DRIZZTSAGA/TIZ/ar9595.tiz
tisunpack -s -f -o DZTS-ARE/F_9696.tis DRIZZTSAGA/TIZ/ar9696.tiz
tisunpack -s -f -o DZTS-ARE/F_9797.tis DRIZZTSAGA/TIZ/ar9797.tiz
tisunpack -s -f -o DZTS-ARE/F_9898.tis DRIZZTSAGA/TIZ/ar9898.tiz
tisunpack -s -f -o DZTS-ARE/F_9999.tis DRIZZTSAGA/TIZ/ar9999.tiz
del tisunpack.exe

echo Biffing area data...

copy Setup-drizztsaga.exe weidu.exe /y
weidu --make-biff DZTS-ARE
call DRIZZTSAGA/deldir DZTS-ARE

@echo.
@echo Installation Complete.
@echo.
