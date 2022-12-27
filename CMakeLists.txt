cmake_minimum_required(VERSION 3.10)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)
list(INSERT CMAKE_MODULE_PATH 0 "${CMAKE_SOURCE_DIR}/CMake")

include(Hunter/HunterInit)

project(ChocolateDuke3D VERSION 1.0.0 LANGUAGES C CXX)

include(ThirdPartyLibraries)

if(WIN32)
	add_definitions(-DWIN32_LEAN_AND_MEAN -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE)
elseif(UNIX)
	add_definitions(-DUNIX)
	add_compile_options("-Wall")
	add_compile_options("-fno-strict-aliasing") 
	add_compile_options("-fcommon")
endif()

add_subdirectory(Engine)
add_subdirectory(Game)

set_property(DIRECTORY PROPERTY VS_STARTUP_PROJECT Game)
