WORKFLOW_NAME := 'alfred2-google-music-workflow'
BUILD_DIR := bin
SRC_DIR := src
SYMLINK := $(HOME)/Library/Application Support/Alfred 2/Alfred.alfredpreferences/workflows/$(WORKFLOW_NAME)

build:
	@mkdir -p "$(BUILD_DIR)"
	@cd $(SRC_DIR) && zip -qr ../$(BUILD_DIR)/$(WORKFLOW_NAME).alfredworkflow * && cd ..
install:
	@if [ -a "$(SYMLINK)" ]; then unlink "$(SYMLINK)"; fi;
	@ln -sf "$(PWD)/$(SRC_DIR)" "$(SYMLINK)"
clean:
	@rm -rf "$(BUILD_DIR)"
