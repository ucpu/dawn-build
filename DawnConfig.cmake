cmake_minimum_required(VERSION 3.31)

add_library(dawn_headers INTERFACE IMPORTED GLOBAL)
target_include_directories(dawn_headers INTERFACE "${CMAKE_CURRENT_LIST_DIR}/include")

add_library(dawn_static STATIC IMPORTED GLOBAL)
target_link_libraries(dawn_static INTERFACE dawn_headers)
if(WIN32)
	set_target_properties(dawn_static PROPERTIES IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/lib/webgpu_dawn.lib")
else()
	set_target_properties(dawn_static PROPERTIES IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/lib/libwebgpu_dawn.a")
endif()
