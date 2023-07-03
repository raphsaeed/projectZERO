#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac
  /Applications/CMake.app/Contents/bin/cmake -E make_directory /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac/Debug/libraries
  /Applications/CMake.app/Contents/bin/cmake -E make_directory /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac/Debug/models
  /Applications/CMake.app/Contents/bin/cmake -E copy_directory /Volumes/Projects/Projects/GitHUB/projectZERO/external/libraries /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac/Debug/libraries/
  /Applications/CMake.app/Contents/bin/cmake -E copy_directory /Volumes/Projects/Projects/GitHUB/projectZERO/external/models /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac/Debug/models/
  /Applications/CMake.app/Contents/bin/cmake -E copy_directory /Volumes/Projects/Projects/GitHUB/projectZERO/external /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac/Debug
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac
  /Applications/CMake.app/Contents/bin/cmake -E make_directory /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac/Release/libraries
  /Applications/CMake.app/Contents/bin/cmake -E make_directory /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac/Release/models
  /Applications/CMake.app/Contents/bin/cmake -E copy_directory /Volumes/Projects/Projects/GitHUB/projectZERO/external/libraries /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac/Release/libraries/
  /Applications/CMake.app/Contents/bin/cmake -E copy_directory /Volumes/Projects/Projects/GitHUB/projectZERO/external/models /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac/Release/models/
  /Applications/CMake.app/Contents/bin/cmake -E copy_directory /Volumes/Projects/Projects/GitHUB/projectZERO/external /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac/Release
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac
  /Applications/CMake.app/Contents/bin/cmake -E make_directory /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac/MinSizeRel/libraries
  /Applications/CMake.app/Contents/bin/cmake -E make_directory /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac/MinSizeRel/models
  /Applications/CMake.app/Contents/bin/cmake -E copy_directory /Volumes/Projects/Projects/GitHUB/projectZERO/external/libraries /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac/MinSizeRel/libraries/
  /Applications/CMake.app/Contents/bin/cmake -E copy_directory /Volumes/Projects/Projects/GitHUB/projectZERO/external/models /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac/MinSizeRel/models/
  /Applications/CMake.app/Contents/bin/cmake -E copy_directory /Volumes/Projects/Projects/GitHUB/projectZERO/external /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac/MinSizeRel
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac
  /Applications/CMake.app/Contents/bin/cmake -E make_directory /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac/RelWithDebInfo/libraries
  /Applications/CMake.app/Contents/bin/cmake -E make_directory /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac/RelWithDebInfo/models
  /Applications/CMake.app/Contents/bin/cmake -E copy_directory /Volumes/Projects/Projects/GitHUB/projectZERO/external/libraries /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac/RelWithDebInfo/libraries/
  /Applications/CMake.app/Contents/bin/cmake -E copy_directory /Volumes/Projects/Projects/GitHUB/projectZERO/external/models /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac/RelWithDebInfo/models/
  /Applications/CMake.app/Contents/bin/cmake -E copy_directory /Volumes/Projects/Projects/GitHUB/projectZERO/external /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac/RelWithDebInfo
fi

