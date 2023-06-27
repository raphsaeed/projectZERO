#>>>>for MAC
#$ PATH="/Applications/CMake.app/Contents/bin":"$PATH"
#$ cmake -GXcode .. 

#>>>>for Ubuntu
#$ cmake -DCMAKE_BUILD_TYPE=Release ..
#$ cmake --build .
#$ chmod +x projectZERO

cmake_minimum_required(VERSION 3.10)
if(APPLE)
set(CMAKE_OSX_DEPLOYMENT_TARGET "13.3" CACHE STRING "Minimum OS X deployment version")
endif(APPLE)
project(projectZERO LANGUAGES CXX)

### Append project cmake script dir ###
list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

### Enumerate project files ###
include(enum_common_hdr)
include(enum_project_hdr)
include(enum_project_src)

### Define output target ###
set(projectZERO "${PROJECT_NAME}")
add_executable(${projectZERO}
    ${project_hdrs}
    ${project_srcs}
    ${common_hdrs}
)

if(APPLE)
    set_target_properties(${projectZERO} PROPERTIES
        CXX_STANDARD 17
        CXX_STANDARD_REQUIRED YES
        CXX_EXTENSIONS NO
        BUILD_RPATH "@executable_path"
    )
endif(APPLE)

if(NOT APPLE)
    set_target_properties(${projectZERO} PROPERTIES
        CXX_STANDARD 17
        CXX_STANDARD_REQUIRED YES
        CXX_EXTENSIONS NO
        BUILD_RPATH "$ORIGIN"
        INSTALL_RPATH "$ORIGIN"
    )
endif(NOT APPLE)

## Specify char is signed-char to fix mismatch with Raspbian
target_compile_options(${projectZERO}
    PRIVATE
        -fsigned-char
)

target_include_directories(${projectZERO}
    PRIVATE
        ${common_hdr_dir} # defined in enum script
        ${project_hdrs}
)

### Configure external library directories ###
set(extDir ${CMAKE_CURRENT_SOURCE_DIR}/external)
set(libDir ${extDir}/libraries)
set(modelDir ${extDir}/models)

### Windows specific configuration ###
if(WIN32)
    ## Build with unicode on Windows
    target_compile_definitions(${projectZERO} PRIVATE UNICODE _UNICODE)
endif(WIN32)

### Linux specific configuration ###
if(UNIX AND NOT APPLE)
    if("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
        if(CMAKE_CXX_COMPILER_VERSION VERSION_LESS 8)
            # Must use std::experimental namespace if older than GCC8
            message("[${PROJECT_NAME}] GCC version less than 8. Using std::experimental namespace.")
            target_compile_definitions(${projectZERO} PRIVATE USE_EXPERIMENTAL_FS)
        endif()

        if(CMAKE_CXX_COMPILER_VERSION VERSION_LESS 9)
            # Must explicitly link separate std::filesystem if older than GCC9
            message("[${PROJECT_NAME}] GCC version less than 9. Explicitly linking separate std::filesystem library.")
            target_link_libraries(${projectZERO} PRIVATE stdc++fs)
        endif()
    endif()
endif(UNIX AND NOT APPLE)

## Copy required library binaries
if(WIN32)
    add_custom_command(TARGET ${projectZERO} PRE_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy_directory ${libDir} $<TARGET_FILE_DIR:${projectZERO}>
        COMMAND ${CMAKE_COMMAND} -E copy_directory ${modelDir} $<TARGET_FILE_DIR:${projectZERO}>
    )
endif(WIN32)

if(UNIX AND NOT APPLE)
    add_custom_command(TARGET ${projectZERO} PRE_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy_directory ${libDir} $<TARGET_FILE_DIR:${projectZERO}>
        COMMAND ${CMAKE_COMMAND} -E copy_directory ${modelDir} $<TARGET_FILE_DIR:${projectZERO}>
    )
endif(UNIX AND NOT APPLE)

if(APPLE)
    set(md_dir "models")
    set(lb_dir "libraries")
    add_custom_command(TARGET ${projectZERO} PRE_BUILD
        COMMAND ${CMAKE_COMMAND} -E make_directory $<TARGET_FILE_DIR:${projectZERO}>/${lb_dir}
        COMMAND ${CMAKE_COMMAND} -E make_directory $<TARGET_FILE_DIR:${projectZERO}>/${md_dir}
        COMMAND ${CMAKE_COMMAND} -E copy_directory ${libDir} $<TARGET_FILE_DIR:${projectZERO}>/${lb_dir}/
        COMMAND ${CMAKE_COMMAND} -E copy_directory ${modelDir} $<TARGET_FILE_DIR:${projectZERO}>/${md_dir}/
        COMMAND ${CMAKE_COMMAND} -E copy_directory ${extDir} $<TARGET_FILE_DIR:${projectZERO}>
    )
endif(APPLE)

## Install application
## '.' means, install to the root directory of CMAKE_INSTALL_PREFIX
install(TARGETS ${projectZERO} DESTINATION .)
install(DIRECTORY ${libDir}/ DESTINATION .)
