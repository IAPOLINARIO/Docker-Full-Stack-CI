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
	@echo "Iniciando Build Gitlab..."
	@$(MAKE) -C ./Base/gitlab/

build-jenkins-base:
	@echo "Buildando versão base do Jenkins..."
	@$(MAKE) -C ./Base/jenkins/

build-sonar: build-postgresql
	@echo "Buildando sonar..."
	@$(MAKE) -C ./Base/sonar/

build-jenkins-dev: build-jenkins-base build-sonar 
	@echo "Buildando Jenkins Dev..."
	@$(MAKE) -C ./Dev/jenkins/

build-mysql:  
	@echo "Buildando Mysql..."
	@$(MAKE) -C ./Base/mysql/

dev: build-jenkins-dev build-sonar build-gitlab build-mysql
	@cd ./Dev/ && docker-compose up -d
	@echo "Construção de ambiente de desenvolvimento concluída. Enjoy! :)"

