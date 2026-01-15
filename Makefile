# Setup the paths to the Dart SDK and the Flutter SDK. Use realpath to resolve absolute paths.
SDK_PATH := $(shell realpath .fvm/flutter_sdk)
DART := $(shell realpath $(SDK_PATH)/bin/dart)

# Helper function to find directories with pubspec.yaml inside the packages folder, up to 2 directories deep
find_pubspec_dirs = $(shell find ./packages -maxdepth 2 -name 'pubspec.yaml' -exec dirname {} \; | xargs realpath)

# Helper function to find directories with test subdirectory inside the packages folder, up to 2 directories deep
find_test_dirs = $(shell find ./packages -maxdepth 2 -name 'test' -type d -exec dirname {} \; | xargs realpath)

.PHONY: lint_all
lint_all:
	@set -e; \
	for dir in $(call find_pubspec_dirs); do \
		echo "Running lint and format in $$dir"; \
		$(DART) analyze $$dir --fatal-infos; \
		$(DART) format --set-exit-if-changed $$dir; \
	done

.PHONY: format
format:
	@set -e; \
	for dir in $(call find_pubspec_dirs); do \
		echo "Formatting $$dir"; \
		$(DART) format $$dir; \
	done

.PHONY: test
test:
	@set -e; \
	for dir in $(call find_test_dirs); do \
		echo "Running tests in $$dir"; \
		cd $$dir && fvm flutter test --no-pub; \
	done
