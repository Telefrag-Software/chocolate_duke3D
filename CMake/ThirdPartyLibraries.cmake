include_guard()

hunter_add_package(SDL)
hunter_add_package(SDL_mixer)

find_package(SDL CONFIG REQUIRED)
find_package(SDL_mixer CONFIG REQUIRED)
