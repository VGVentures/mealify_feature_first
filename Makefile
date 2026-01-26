# Setup the paths to the Dart SDK and the Flutter SDK. Use realpath to resolve absolute paths.
SDK_PATH := $(shell realpath .fvm/flutter_sdk)
DART := $(shell realpath $(SDK_PATH)/bin/dart)
FLUTTER := $(shell realpath $(SDK_PATH)/bin/flutter)

# Helper function to find directories with pubspec.yaml inside the packages folder, up to 3 directories deep
find_pubspec_dirs = $(shell find ./packages -maxdepth 3 -name 'pubspec.yaml' -exec dirname {} \; | xargs realpath)

# Helper function to find directories with test subdirectory inside the packages folder, up to 3 directories deep
find_test_dirs = $(shell find ./packages -maxdepth 3 -name 'test' -type d -exec dirname {} \; | xargs realpath)

.PHONY: analyze
analyze:
	@set -e; \
	for dir in $(call find_pubspec_dirs); do \
		echo "Running analyze in $$dir"; \
		$(DART) analyze $$dir --fatal-infos; \
	done

.PHONY: check_formatting
check_formatting:
	@set -e; \
	for dir in $(call find_pubspec_dirs); do \
		echo "Checking formatting in $$dir"; \
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
		cd $$dir && $(FLUTTER) test --no-pub; \
	done

.PHONY: clean
clean:
	@set -e; \
	echo "Cleaning workspace"; \
	$(FLUTTER) clean; \
	for dir in $(call find_pubspec_dirs); do \
		echo "Cleaning $$dir"; \
		cd $$dir && $(FLUTTER) clean; \
	done
