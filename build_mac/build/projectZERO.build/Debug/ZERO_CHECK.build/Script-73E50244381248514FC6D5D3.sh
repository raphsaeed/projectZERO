#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac
  make -f /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac
  make -f /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac
  make -f /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac
  make -f /Volumes/Projects/Projects/GitHUB/projectZERO/build_mac/CMakeScripts/ReRunCMake.make
fi

