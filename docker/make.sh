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

export JSON_C_WTF=/build/json-c-build/

cd build/

ls
ls COGNAC

rm -rvf /oapi-cli/docker-package/
make oapi-cli-x86_64.AppImage

