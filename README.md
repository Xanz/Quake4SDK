# Quake4SDK
This the standard Quake 4 SDK, fixed so that it can be compiled using Visual Studio 2022/2019 along with some bugfixes and general quality of life fixes such as deployment scripts.

# Features
- Visual Studio 2022/2019 support.
- Dropped MPGame and fixed Game to allow for Multiplayer mod development.
- Setup to automatically debug Quake 4 Steam version.
- Deployment scripts for both debug and release.
- Full instructions on basic usage.

# Dependencies
- You must have Visual Studio 2019 or greater. (Linux support is untested but should compile. Will be tested in the future.)
- You must have C++ language support installed using Visual Studio installer.
- This was tested using the Steam version of the game and all deployment scripts assume this to be the case. You will need to modify them if your Quake 4 install is not in the default location.

# Setup
1. Clone down this repository somewhere such as "C:\Git\" (Do not clone this repository into your Quake 4 Directory!)
2. Open q4sdk.sln in Visual Studio. (Start visual studio as admin otherwise you won't be able to debug.)
3. Right click the q4sdk solution in the Solution Explorer on the right hand side.
4. Click Build solution.
6. Assuming the build succeded, Find the DeployDebug.bat script and edit it using Notepad++/any text editor. (You will have to do this for the DeployRelease.bat too.)
7. Change the "set Q4ModName=MODNAMEHERE" to your quake 4 mod folder name.
8. Run the script and it will automatically deploy your game DLL and delete the necessary files to ensure your game detects your changes.
9. Within Visual Studio right click Game within the Solution explorer, Click properties.
10. Goto Debugging, within Command arguments update "+set fs_game MODNAMEHERE" with your quake 4 mod folder name. Click apply and ok. (You can also update your Quake 4 install location here aswell.)
11. You should now be able to start debugging by pressing the green Local Windows Debugger button in the top of Visual studio. (Make sure you are running Visual Studio as Admin!)

# Usage
1. Whenever you make changes to the SDK, Build the solution as previously described.
2. Assuming it built succesfully run the DeployDebug.bat or DeployRelease.bat depending on what build configuration you are using. (By default this will be Debug.)

# Support
If you have any issues feel free to raise them here, or contact me on Discord.
