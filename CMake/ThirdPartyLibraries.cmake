include_guard()

hunter_add_package(SDL2)
hunter_add_package(SDL_mixer)

find_package(SDL2 CONFIG REQUIRED)
find_package(SDL_mixer CONFIG REQUIRED)
