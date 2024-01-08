cmake_minimum_required(VERSION 3.13.0)
project(Quake4SDK VERSION 1.4.3)

file(GLOB_RECURSE SOURCES src/*.cpp src/*.c src/game/game.def)

file(GLOB_RECURSE HEADERS src/*.h)


set(Q4InstallPath CACHE STRING "C://Program Files (x86)//Steam//steamapps//common//Quake 4")
set(Q4ModName CACHE STRING MODNAMEHERE)

set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} /D _DEBUG")
set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} /D _RELEASE")

add_compile_definitions(_WINDOWS)
add_compile_definitions(GAME_DLL)
add_compile_definitions(Q4SDK)
add_compile_definitions(_CRT_SECURE_NO_WARNINGS)

# Suppress the following warnings. I might fix these one day but for right now ignore.
add_definitions(/wd4595)
add_definitions(/wd4091)

# Needed so that VSCode can syntax check correctly.
include_directories(${CMAKE_SOURCE_DIR}/src PUBLIC)

add_library(gamex86 SHARED ${HEADERS} ${SOURCES})

set_target_properties(gamex86 PROPERTIES VS_DEBUGGER_COMMAND ${Q4InstallPath}//Quake4.exe)
set_target_properties(gamex86 PROPERTIES VS_DEBUGGER_WORKING_DIRECTORY "${Q4InstallPath}")
set_target_properties(gamex86 PROPERTIES VS_DEBUGGER_COMMAND_ARGUMENTS "+set fs_game ${Q4ModName} +set com_allowConsole 1  +set win_allowmultipleInstances 1")