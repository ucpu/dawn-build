cmake_minimum_required(VERSION 3.31)

add_library(dawn_headers INTERFACE IMPORTED)
target_include_directories(dawn_headers INTERFACE include)

add_library(dawn_static STATIC IMPORTED)
target_link_libraries(dawn_static INTERFACE dawn_headers)
if(WIN32)
	set_target_properties(dawn_static PROPERTIES IMPORTED_LOCATION "lib/webgpu_dawn.lib")
else()
	set_target_properties(dawn_static PROPERTIES IMPORTED_LOCATION "lib/libwebgpu_dawn.a")
endif()
