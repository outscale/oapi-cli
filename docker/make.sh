#!/bin/bash
#to remove:
#end to remove

cd oapi-cli/
make json-c/.git
cd ..

if [ -n "$1" ]; then
    if [ "$1" = "cp" ]; then
	rm -rvf build/
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

cd build/

mkdir json-c-build
cd json-c-build
echo CMAKE NOW
cmake ../json-c/
cd ..

git clone https://github.com/rustls/rustls-ffi -b v0.9.2
cd rustls-ffi
export PATH=$PATH:/${HOME}/.cargo/bin
make
make DESTDIR=${HOME}/rustls-ffi-built/ install
cd ..

git clone https://github.com/curl/curl.git -b curl-7_88_1
cd curl

autoreconf -fi
./configure --with-rustls=${HOME}/rustls-ffi-built --without-nss
make
cd ..

cp -v curl/lib/.libs/libcurl.so* .

pwd

echo CURL_LD="-L$PWD -lcurl" > config.mk
echo LD_LIB_PATH="$PWD/json-c-build:$PWD/curl/lib/.libs/" >> config.mk
echo APPIMAGETOOL_OPTION="--appimage-extract-and-run" >> config.mk

export CURL_BASH_CFLAGS=-Icurl/include/

echo "do the make \!\!"
make -C json-c-build json-c-static || 1 # ignore example compilation error

make
echo "some ldds"
echo "oapi-clip"
echo "libcurl.so"
make oapi-cli-x86_64.AppImage

rm -rvf /oapi-cli/docker-package/
mkdir /oapi-cli/docker-package/
cp oapi-cli-x86_64.AppImage /oapi-cli/docker-package/
cp /etc/pki/tls/certs/ca-bundle.crt /oapi-cli/docker-package/

