all: dev

build-ubuntu: 
	@echo "Iniciando Build Ubuntu..."
	@$(MAKE) -C ./Base/ubuntu/

build-postgresql: build-ubuntu
	@echo "Iniciando Build Postgresql..."
	@$(MAKE) -C ./Base/postgresql/

build-redis: build-ubuntu 
	@echo "Iniciando Build Redis..."
	@$(MAKE) -C ./Base/redis/

build-gitlab: build-ubuntu build-redis build-postgresql  
	@echo "Iniciando Build Redis..."
	@$(MAKE) -C ./Base/redis/

dev: build-gitlab
	@echo "Construção de ambiente de desenvolvimento concluída. Enjoy! :)"

