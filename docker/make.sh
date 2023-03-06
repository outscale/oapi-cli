#!/bin/bash
#to remove:
#end to remove

if [ -n "$1" ]; then
    if [ "$1" = "cp" ]; then
	mkdir oapuild
	cp -rvf oapi-cli/* ./oapuild
    else
	git clone $1 ./oapuild
	git checkout origin/master
	git clean -df
    fi
else
    git clone oapi-cli ./oapuild
    git checkout origin/master
    git clean -df
fi

cd oapuild/

ls
ls COGNAC

rm -rvf /oapi-cli/docker-package/
make oapi-cli-x86_64.AppImage

