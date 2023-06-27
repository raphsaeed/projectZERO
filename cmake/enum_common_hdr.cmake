## Script for enumerating CameraRemote SDK public header files
## referenced by RemoteCli
set(__common_hdr_dir ${CMAKE_CURRENT_SOURCE_DIR}/common)

### Enumerate CameraRemote SDK public header files ###
message("[${PROJECT_NAME}] Indexing common header files..")
set(__common_hdrs
    ${__common_hdr_dir}/CrTypes.h
)

set(common_hdrs ${__common_hdrs})
source_group("common" FILES ${common_hdrs})

set(common_hdr_dir ${__common_hdr_dir})
