
all: build

build:
	@docker build --tag=iapolinario/ubuntu:latest .

release: build
	@docker build --tag=iapolinario/ubuntu:$(shell cat VERSION) .