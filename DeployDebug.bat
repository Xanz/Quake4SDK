@echo off
set Q4ModName=MODNAMEHERE
set Q4InstallPath=C:\Program Files (x86)\Steam\steamapps\common\Quake 4
REM We have to delete these otherwise your game dll will be overwritten.
del "%Q4InstallPath%\q4base\game000.pk4"
del "%Q4InstallPath%\q4base\game100.pk4"
del "%Q4InstallPath%\q4base\game200.pk4"
del "%Q4InstallPath%\q4base\game300.pk4"
del "%Q4InstallPath%\q4mp\game000.pk4"
del "%Q4InstallPath%\q4mp\game100.pk4"
del "%Q4InstallPath%\q4mp\game200.pk4"
del "%Q4InstallPath%\q4mp\game300.pk4"
rename ".\Builds\Win32\Debug\Gamex86.dll" "gamex86.dll"
xcopy /Y ".\Builds\Win32\Debug\gamex86.dll" "%Q4InstallPath%\%Q4ModName%\"
pause