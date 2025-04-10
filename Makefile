JSON_C_LDFLAGS=$(shell pkg-config --libs json-c)
JSON_C_CFLAGS=$(shell pkg-config --cflags json-c)
API_RULE_DEPEDENCIES=
OAPI_APPIMAGE_RULE_DEPEDENCIES=
APPIMAGETOOL_OPTION=
CLI_NAME=oapi-cli

include config.mk
include COGNAC/oapi-cli.mk

COGNAC/oapi-cli.mk:
	git submodule update --init

json-c/.git:
	git clone https://github.com/cosmo-ray/json-c.git -b color

json-c-build/libjson-c.a: json-c/.git
	rm -rvf ./json-c-build
	mkdir json-c-build
	cd json-c-build && cmake ../json-c "$${CMAKE_ARG}" # might need to be replace by cmake3
	make -C json-c-build json-c-static

main-helper.h:
	cp  COGNAC/main-helper.h .

main.c: COGNAC/main.c
	cp COGNAC/main.c .

osc_sdk.h: osc-sdk-C/osc_sdk.h
	cp osc-sdk-C/osc_sdk.h .

osc_sdk.c: osc-sdk-C/osc_sdk.c
	cp osc-sdk-C/osc_sdk.c .

$(CLI_NAME)-completion.bash:
	cp COGNAC/oapi-cli-completion.bash .

gen: main.c osc_sdk.h osc_sdk.c oapi-cli-completion.bash main-helper.h

osc-sdk-C/:
	git submodule update --init

COGNAC/:
	git submodule update --init

COGNAC/config.mk: COGNAC/
	cd COGNAC && ./configure $$COGNAC_CONFIG

COGNAC/main.c: COGNAC/config.mk
	cp version COGNAC/cli-version
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
