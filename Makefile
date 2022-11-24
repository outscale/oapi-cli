oapi-cli: COGNAC/oapi-cli
	cp COGNAC/oapi-cli oapi-cli

COGNAC/:
	git submodule update --init

COGNAC/config.mk: COGNAC/
	cd COGNAC && ./configure --compile-json-c

COGNAC/oapi-cli: COGNAC/config.mk
	make -j -C COGNAC/

oapi-cli-x86_64.AppImage:
	make -j -C COGNAC/ oapi-cli-x86_64.AppImage
	cp COGNAC/oapi-cli-x86_64.AppImage oapi-cli-x86_64.AppImage

clean: COGNAC/
	make -C COGNAC/ clean
	rm -rvf oapi-cli oapi-cli-x86_64.AppImage

test:
	./tests.sh

.PHONY: clean test
