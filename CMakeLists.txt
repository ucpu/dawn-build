cmake_minimum_required(VERSION 3.31)
project(cagedawn LANGUAGES C CXX)

include("cage/cmake/cage_build_configuration.cmake")
cage_build_configuration()

add_subdirectory(dawn)
