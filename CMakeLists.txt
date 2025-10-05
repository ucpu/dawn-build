cmake_minimum_required(VERSION 3.31)
project(cagedawn LANGUAGES C CXX)

include("cage/cmake/cage_build_configuration.cmake")
cage_build_configuration()

# disable whole program optimizations
string(REGEX REPLACE "/GL" "" CMAKE_C_FLAGS_RELEASE ${CMAKE_C_FLAGS_RELEASE})
string(REGEX REPLACE "/GL" "" CMAKE_CXX_FLAGS_RELEASE ${CMAKE_CXX_FLAGS_RELEASE})
string(REGEX REPLACE "/LTCG" "" CMAKE_STATIC_LINKER_FLAGS_RELEASE ${CMAKE_STATIC_LINKER_FLAGS_RELEASE})
string(REGEX REPLACE "-flto" "" CMAKE_C_FLAGS_RELEASE ${CMAKE_C_FLAGS_RELEASE})
string(REGEX REPLACE "-flto" "" CMAKE_CXX_FLAGS_RELEASE ${CMAKE_CXX_FLAGS_RELEASE})

add_subdirectory(dawn)
