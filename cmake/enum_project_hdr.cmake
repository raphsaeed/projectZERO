## Script for enumerating project header files
set(__project_hdr_dir ${CMAKE_CURRENT_SOURCE_DIR}/include)

### Enumerate projects header files ###
message("[${PROJECT_NAME}] Indexing projects header files..")
set(__project_hdrs
    ${__project_hdr_dir}/projectzero.h
    ${__project_hdr_dir}/hpc.h
    ${__project_hdr_dir}/text.h
)

## Use projects_headers in project CMakeLists
set(project_hdrs ${__project_hdr_dir})