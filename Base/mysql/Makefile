all: build

build:
	@docker build --tag=iapolinario/mysql .

release: build
	@docker build --tag=iapolinario/mysql:$(shell cat VERSION) .