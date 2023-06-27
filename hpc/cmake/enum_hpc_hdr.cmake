## Script for enumerating hpc header files
set(__hpc_hdr_dir ${CMAKE_CURRENT_SOURCE_DIR}/hpc/include)

### Enumerate hpc header files ###
message("[${PROJECT_NAME}] Indexing hpc header files..")
set(__hpc_hdrs
    ${__hpc_hdr_dir}/hpc.h
    ${__hpc_hdr_dir}/Text.h
)

## Use hpc_srcs in project CMakeLists
set(hpc_hdrs ${__hpc_hdr_dir})