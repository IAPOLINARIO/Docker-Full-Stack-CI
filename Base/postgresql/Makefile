all: build

build:
	@docker build --tag=iapolinario/postgresql .

release: build
	@docker build --tag=iapolinario/postgresql:$(shell cat VERSION) .
