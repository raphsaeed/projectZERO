## Script for enumerating hpc source files
set(__hpc_src_dir ${CMAKE_CURRENT_SOURCE_DIR}/hpc/src)

### Enumerate hpc source files ###
message("[${PROJECT_NAME}] Indexing hpc source files..")
set(__hpc_srcs
    ${__hpc_src_dir}/hpc.cpp
    ${__hpc_src_dir}/Text.cpp
)

## Use hpc_srcs in project CMakeLists
set(hpc_srcs ${__hpc_srcs})
