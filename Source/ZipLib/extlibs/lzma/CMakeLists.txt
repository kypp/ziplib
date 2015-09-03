set (MODULE_NAME lzma)

include_directories(.)
file (GLOB ${MODULE_NAME}_SRCS *.c)

add_library (${MODULE_NAME} ${${MODULE_NAME}_SRCS})

install (TARGETS ${MODULE_NAME} 
		ARCHIVE DESTINATION lib 
		LIBRARY DESTINATION lib)