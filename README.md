# Quake4SDK
This the standard Quake 4 SDK, fixed so that it can be compiled using the latest compilers and using a modern build system in CMake.

# Features
- CMake build system.
- Support for many code editors such as VSCode, Visual Studio, Rider, NeoVim.
- Unified Game folder to allow for Multiplayer/Singleplayer mod development in one place.
- Setup to automatically debug Quake 4 Steam version for both Visual Studio and VSCode.
- Deployment scripts for both debug and release.
- Full instructions on basic usage.
- Small bugfixes.

# Dependencies
- You must have CMake 3.13 or greater.
- A C++ compiler, Its recommended you use MSVC.
- This was tested using the Steam version of the game and all deployment scripts assume this to be the case. You will need to modify them if your Quake 4 install is not in the default location.
- Recommend to use Windows. (Linux support has not been tested so the deployment scripts will not work. The SDK should still compile on Linux though!)

# Setup
## Deployment scripts
1. Before you can start building I would recommend setting up the deployment scripts.
2. Edit the deployment scripts and change the Q4ModName path to your mod name. (Do not use spaces)
3. You can also update your Quake 4 install path if it is not in the default location for steam.
4. You should also do this for the StartGame.bat if you wish to use this script.
5. If you plan on using VSCode you should also edit the file in ".vscode/launch.json" to update your mod name and install path.

## VSCode
1. Make sure you have the following extensions C/C++ microsoft extension, CMake Tools and CMake extensions.
2. Clone down this repository. (Do not clone this into your Quake 4 Directory.)
3. Open the folder in VSCode.
4. Open the CMakeLists.txt, this should start generating a build folder for you.
5. Click Build.
6. Run the DeployDebug.bat or release version depending on the build configuration you are using.
7. Launch the debugger using F5.

## Visual Studio/CMake GUI
1. Clone down this repository. (Do not clone this into your Quake 4 Directory.)
2. Open CMake GUI.
3. Set source code to repository location.
4. Set build path to a subfolder within repository called build. (You might have to create this folder.)
5. Click Configure and change both Q4InstallPath and Q4ModName to the correct values.
6. Click Generate. You may be asked to select a generator just select the latest version of Visual studio.
7. Navigate to the build folder created and Open q4sdk.sln in Visual Studio. (Start visual studio as admin otherwise you won't be able to debug.)
8. Right click the q4sdk solution in the Solution Explorer on the right hand side.
9. Click Build solution.
10. Assuming the build succeded, Run the DeployDebug.bat or release version depending on the build configuration you are using.
11. You should now be able to start debugging by pressing the green Local Windows Debugger button in the top of Visual studio. (Make sure you are running Visual Studio as Admin!)

# General Usage
1. Whenever you make changes to the SDK, Build the solution as previously described.
2. Assuming it built succesfully run the DeployDebug.bat or DeployRelease.bat depending on what build configuration you are using. (By default this will be Debug.)
3. Launch Quake 4 with mod selected using launch arguments or within mod menu.

# Support
If you have any issues feel free to raise them here, or contact me on Discord.
