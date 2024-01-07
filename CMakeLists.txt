cmake_minimum_required(VERSION 3.13.0)
project(Quake4SDK VERSION 1.4.3)

file(GLOB_RECURSE SOURCES src/*.cpp src/*.c src/game/game.def)

file(GLOB_RECURSE HEADERS src/*.h)

set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} /D _DEBUG")
set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} /D _RELEASE")

add_compile_definitions(_WINDOWS)
add_compile_definitions(GAME_DLL)
add_compile_definitions(Q4SDK)
add_compile_definitions(_CRT_SECURE_NO_WARNINGS)
add_definitions(/wd4595)
add_definitions(/wd4091)

add_library(gamex86 SHARED ${HEADERS} ${SOURCES})