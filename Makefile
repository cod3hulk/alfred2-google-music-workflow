BUILD_DIR := bin
SRC_DIR := $(PWD)/src
SYMLINK := $(HOME)/Library/Application Support/Alfred 2/Alfred.alfredpreferences/workflows/alfred2-google-music-workflow

build:
	@mkdir -p "$(BUILD_DIR)"
	@zip -qr bin/alfred2-google-music-workflow.alfredworkflow src
install:
	@if [ -a "$(SYMLINK)" ]; then unlink "$(SYMLINK)"; fi;
	ln -sf "$(SRC_DIR)" "$(SYMLINK)"
clean:
	@rm -rf "$(BUILD_DIR)"
