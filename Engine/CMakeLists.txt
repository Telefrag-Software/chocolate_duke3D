cmake_minimum_required(VERSION 3.10)

list(INSERT CMAKE_MODULE_PATH 0 "${CMAKE_CURRENT_LIST_DIR}/CMake")

include(SourceFiles)

add_library("Engine" STATIC ${ENGINE_SOURCE_FILES})

target_link_libraries(${PROJECT_NAME}
	PUBLIC
		SDL2::SDL2
		SDL_mixer::SDL_mixer
)

set_target_properties(${PROJECT_NAME} PROPERTIES OUTPUT_NAME "Engine")
