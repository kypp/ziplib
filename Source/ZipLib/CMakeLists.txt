set (MODULE_NAME ziplib)

add_subdirectory (extlibs/zlib)

include_directories(.)
file (GLOB ${MODULE_NAME}_SRCS *.cpp detail/*.cpp)

add_library (${MODULE_NAME} STATIC ${${MODULE_NAME}_SRCS})

install (TARGETS ${MODULE_NAME}
          RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
          LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
          ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
        )