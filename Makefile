OMNIEDGE_VERSION="0.1.0"

.PHONY: omniedge-% clean purge

all: omniedge-amd64

omniedge-%:
	@./build-package.sh ${OMNIEDGE_VERSION} $*

clean:
	rm -rf _build _omniedge

purge: clean
	rm -rf spks

