#!/bin/sh

cp -v $(ldd $1 | grep '=>' | cut -d ' ' -f 3 | grep -v  -e libm -e libc.so* -e libdl -e ld-linux-x86-64 -e libpthread -e librt) $2
