#!/bin/bash
#to remove:
#end to remove

if [ -n "$1" ]; then
    if [ "$1" = "cp" ]; then
	mkdir build
	cp -rvf oapi-cli/* ./build
    else
	git clone $1 ./build
	git checkout origin/master
	git clean -df
    fi
else
    git clone oapi-cli ./build
    git checkout origin/master
    git clean -df
fi

export JSON_C_WTF=/build/json-c/

cd build/

cmake --version

make json-c/.git

mkdir json-c-build
cd json-c-build
echo CMAKE NOW

cmake ../json-c/
cd ..
echo "do the make \!\!"
make -C json-c-build json-c-static

echo ========= make json-c-build/libjson-c.a ========

make json-c-build/libjson-c.a

rm -rvf /oapi-cli/docker-package/
make oapi-cli-x86_64.AppImage

