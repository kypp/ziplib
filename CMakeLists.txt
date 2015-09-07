project(ZipLib)
cmake_minimum_required(VERSION 2.8)

add_subdirectory (Source/ZipLib)

install (DIRECTORY Source/ZipLib DESTINATION include FILES_MATCHING PATTERN "*.h")