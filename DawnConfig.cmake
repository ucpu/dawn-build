cmake_minimum_required(VERSION 3.31)

add_library(dawn STATIC IMPORTED)
target_include_directories(dawn include)
if(WIN32)
	set_target_properties(dawn PROPERTIES IMPORTED_LOCATION "lib/webgpu_dawn.lib")
else()
	set_target_properties(dawn PROPERTIES IMPORTED_LOCATION "lib/libwebgpu_dawn.a")
endif()
