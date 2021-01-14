tool    ?= $(shell basename $(PWD))
version := $(shell ./$(tool) --version | awk '{print $$2}' )
prefix  := /usr/local

all: build

build:
	@echo "The final executable file is a bash script."
	@echo "You don't need to build it."
	@echo "The current version of the script: $(version)"

install:: $(tool)
	install $(tool) $(prefix)/bin
