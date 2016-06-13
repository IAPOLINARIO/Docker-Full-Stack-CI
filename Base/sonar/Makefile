all: build

build:
	@docker build --tag=iapolinario/sonar .

release: build
	@docker build --tag=iapolinario/sonar:$(shell cat VERSION) .