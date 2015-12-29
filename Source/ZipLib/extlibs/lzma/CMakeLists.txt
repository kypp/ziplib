set (MODULE_NAME lzma)

include_directories(.)
if(NOT UNIX)
	file (GLOB ${MODULE_NAME}_SRCS *.c)
else()
	file (GLOB ${MODULE_NAME}_SRCS unix/*.c)
endif()

add_library (${MODULE_NAME} ${${MODULE_NAME}_SRCS})

install (TARGETS ${MODULE_NAME} 
		ARCHIVE DESTINATION lib 
		LIBRARY DESTINATION lib)