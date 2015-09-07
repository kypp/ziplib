set (MODULE_NAME ziplib)

add_subdirectory (extlibs/bzip2)
add_subdirectory (extlibs/lzma)
add_subdirectory (extlibs/zlib)

include_directories(.)
file (GLOB ${MODULE_NAME}_SRCS *.cpp detail/*.cpp)

add_library (${MODULE_NAME} ${${MODULE_NAME}_SRCS})

install (TARGETS ${MODULE_NAME} 
		ARCHIVE DESTINATION lib 
		LIBRARY DESTINATION lib)