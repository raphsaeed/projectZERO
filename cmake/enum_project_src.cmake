## Script for enumerating Project source files
set(__project_src_dir ${CMAKE_CURRENT_SOURCE_DIR}/src)

### Enumerate hpc source files ###
message("[${PROJECT_NAME}] Indexing hpc source files..")
set(__project_srcs
    ${__project_src_dir}/hpc.cpp
    ${__project_src_dir}/text.cpp
    ${__project_src_dir}/projectZERO.cpp
)

## Use Project source CMakeLists
set(project_srcs ${__project_srcs})
