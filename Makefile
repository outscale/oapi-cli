LD_LIB_PATH=:./json-c-build
JSON_C_LDFLAGS=./json-c-build/libjson-c.a
JSON_C_CFLAGS=-I./json-c -I./json-c-build
JSON_C_RULE=./json-c-build/libjson-c.a
CURL_LD=-lcurl
OAPI_RULE_DEPEDENCIES=
OAPI_APPIMAGE_RULE_DEPEDENCIES=

include COGNAC/oapi-cli.mk

COGNAC/oapi-cli.mk:
	git submodule update --init

json-c/.git:
	git clone https://github.com/cosmo-ray/json-c.git -b color

json-c-build/libjson-c.a: json-c/.git
	rm -rvf ./json-c-build
	mkdir json-c-build
	ls
	ls json-c
	cmake --trace -Sjson-c -Bjson-c-build "$${CMAKE_ARG}" # might need to be replace by cmake3
	make -C json-c-build json-c-static

main-helper.h:
	cp  COGNAC/main-helper.h .

main.c: COGNAC/main.c
	cp COGNAC/main.c .

osc_sdk.h: COGNAC/main.c
	cp COGNAC/osc_sdk.h .

osc_sdk.c: COGNAC/main.c
	cp COGNAC/osc_sdk.c .

oapi-cli-completion.bash: COGNAC/main.c
	cp COGNAC/oapi-cli-completion.bash .

gen: main.c osc_sdk.h osc_sdk.c oapi-cli-completion.bash main-helper.h

COGNAC/:
	git submodule update --init

COGNAC/config.mk: COGNAC/
	cd COGNAC && ./configure --compile-json-c $$COGNAC_CONFIG

COGNAC/main.c: COGNAC/config.mk
	make -j -C COGNAC/

clean_all: fclean
	make -C COGNAC/ clean
	rm -rvf main-helper.h main.c osc_sdk.h osc_sdk.c

fclean: clean
	rm -rvf oapi-cli oapi-cli-x86_64.AppImage

clean:
	rm -rvf *.o

tests:
	./tests.sh
	./local-tests.sh

tests-appimage:
	./local-tests.sh ./oapi-cli-x86_64.AppImage

tests-all: tests tests-appimage

.PHONY: clean test clean_all gen
