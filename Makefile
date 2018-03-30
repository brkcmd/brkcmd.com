NO_COLOR := \e[0m
OK_COLOR := \e[32;01m
ERROR_COLOR := \e[31;01m
WARN_COLOR := \e[33;01m

NODE_MODULES_BIN := $(wildcard ./node_modules/.bin)
PATH := $(if $(NODE_MODULES_BIN),$(abspath $(NODE_MODULES_BIN)):,)$(PATH)
SHELL := /usr/bin/env PATH=$(PATH) /bin/sh

HUGO = $(shell command -v hugo ; )
NETLIFY = $(shell command -v netlify ; )
POSTCSS = $(shell command -v postcss ; )

.PHONY: clean
clean:
	-rm -r public

.PHONY: build
build:
	$(if $(HUGO),,$(error "hugo not found, try running `apt install hugo`"))
	$(HUGO) --cleanDestinationDir --destination public

.PHONY: deploy
deploy: build
	$(if $(NETLIFY),,$(error "netlify not found, try running `npm i netlify-cli`"))
	$(NETLIFY) deploy --path public

.PHONY: build-static
build-static:
	$(if $(POSTCSS),,$(error "postcss not found, try running `npm i postcss-cli`"))

.PHONE: check-deps
check-deps:
	@echo "Using computed PATH=$$PATH"
	@echo -n "checking for hugo ... "
	@echo "$(if $(HUGO),$(OK_COLOR)found: $(HUGO)$(NO_COLOR),$(ERROR_COLOR)not found$(NO_COLOR))"
	@echo -n "checking for netlify ... "
	@echo "$(if $(NETLIFY),$(OK_COLOR)found: $(NETLIFY)$(NO_COLOR),$(ERROR_COLOR)not found$(NO_COLOR))"
	@echo -n "checking for postcss ... "
	@echo "$(if $(POSTCSS),$(OK_COLOR)found: $(POSTCSS)$(NO_COLOR),$(ERROR_COLOR)not found$(NO_COLOR))"
