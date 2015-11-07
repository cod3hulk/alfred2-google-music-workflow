WORKFLOW_NAME := 'alfred2-google-music-workflow'
BUILD_DIR := bin
SRC_DIR := $(PWD)/src
SYMLINK := $(HOME)/Library/Application Support/Alfred 2/Alfred.alfredpreferences/workflows/$(WORKFLOW_NAME)

build:
	@mkdir -p "$(BUILD_DIR)"
	@ditto -ck --sequesterRsrc $(SRC_DIR) $(BUILD_DIR)/$(WORKFLOW_NAME).alfredworkflow
install:
	@if [ -a "$(SYMLINK)" ]; then unlink "$(SYMLINK)"; fi;
	@ln -sf "$(SRC_DIR)" "$(SYMLINK)"
clean:
	@rm -rf "$(BUILD_DIR)"
