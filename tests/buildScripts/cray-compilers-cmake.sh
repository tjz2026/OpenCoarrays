#!/bin/sh
SOURCE_PATH=../src
EXTRA_ARGS=$@

rm -f CMakeCache.txt
/home/users/p01513/bin/cmake \
  -D CMAKE_BUILD_TYPE:STRING=DEBUG \
  -D CMAKE_Fortran_COMPILER:FILEPATH=ftn \
  -D CMAKE_C_COMPILER:FILEPATH=cc \
  -D CMAKE_Fortran_FLAGS:STRING="-ew -h caf" \
  -D CMAKE_VERBOSE_MAKEFILE:BOOL=TRUE \
$EXTRA_ARGS \
$SOURCE_PATH