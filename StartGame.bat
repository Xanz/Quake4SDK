@echo off
@REM Starts the game. Typically used for singleplayer mods.
set Q4ModName=xanzcoop
set Q4InstallPath=C:\Program Files (x86)\Steam\steamapps\common\Quake 4
set CWD=%cd%
cd %Q4InstallPath%
start "" "%Q4InstallPath%\Quake4.exe" +set com_allowConsole 1 +set win_allowmultipleInstances 1 +set fs_game %Q4ModName% +set si_map mp/l4dm2_1 +set si_pure 0 +set developer 1 +spawnserver
cd %CWD%