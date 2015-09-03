project(ZipLib)
cmake_minimum_required(VERSION 2.8)

add_subdirectory (Source/ZipLib)

install (DIRECTORY include/dime DESTINATION include FILES_MATCHING PATTERN "*.h")