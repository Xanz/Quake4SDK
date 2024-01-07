cmake_minimum_required(VERSION 3.13.0)
project(Quake4SDK VERSION 1.4.3)

file(GLOB_RECURSE SOURCES src/*.cpp src/*.c src/game/game.def)

file(GLOB_RECURSE HEADERS src/*.h)

add_compile_definitions(_DEBUG)
# add_compile_definitions(_RELEASE)

add_compile_definitions(_WINDOWS)
add_compile_definitions(GAME_DLL)
add_compile_definitions(Q4SDK)
add_compile_definitions(_CRT_SECURE_NO_WARNINGS)
add_definitions(/wd4595)
add_definitions(/wd4091)

add_library(gamex86 SHARED ${HEADERS} ${SOURCES})