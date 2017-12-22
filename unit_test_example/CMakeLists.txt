# CMake project file for test

cmake_minimum_required (VERSION 2.8)
project (FORTRAN_EXAMPLES)
enable_language (Fortran)

set (EXE_NAME fortrantest)

set (SOURCE_DIR_BASE ${CMAKE_CURRENT_LIST_DIR}/source)
set (FRUIT_DIR_BASE ${CMAKE_CURRENT_LIST_DIR}/../third_party/fruit/src)
set (BUILD_DIR ${CMAKE_CURRENT_LIST_DIR}/build)

set (F90_FLAGS "-O3  -ffree-form  -ffloat-store -fno-sign-zero -std=f2008")

# Sources 
set (F90_SOURCES 
    ${FRUIT_DIR_BASE}/fruit.f90
    ${SOURCE_DIR_BASE}/gettersetter.f90)

# The program
set (PROG_SOURCE ${SOURCE_DIR_BASE}/fruit_driver.f90 )

# set the output directories
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY lib)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY bin)

# set the flags
set_source_files_properties(${F90_SOURCES} PROPERTIES COMPILE_FLAGS ${F90_FLAGS})
set_source_files_properties(${PROG_SOURCE} PROPERTIES COMPILE_FLAGS ${F90_FLAGS})

# build the program
add_executable (${EXE_NAME} ${PROG_SOURCE} ${F90_SOURCES})
set_target_properties ( ${EXE_NAME}
                        PROPERTIES
                        OUTPUT_NAME ${EXE_NAME}
                        Fortran_MODULE_DIRECTORY ${CMAKE_BINARY_DIR}/include )

