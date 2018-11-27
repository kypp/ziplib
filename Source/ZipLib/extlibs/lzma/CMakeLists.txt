set (MODULE_NAME lzma_2)

include_directories(.)
if(NOT UNIX)
	file (GLOB ${MODULE_NAME}_SRCS *.c)
else()
	file (GLOB ${MODULE_NAME}_SRCS unix/*.c)
endif()

add_library (${MODULE_NAME} STATIC ${${MODULE_NAME}_SRCS})

install (TARGETS ${MODULE_NAME}
          RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
          LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
          ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
        )