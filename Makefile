oapi-cli: COGNAC/cognac
	cp COGNAC/cognac oapi-cli

COGNAC/:
	git submodule update --init

COGNAC/config.mk: COGNAC/
	cd COGNAC && ./configure

COGNAC/cognac: COGNAC/config.mk
	make -j -C COGNAC/
