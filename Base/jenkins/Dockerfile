###Realiza configuração basica do Jenkins para o contrato###
FROM jenkins
MAINTAINER Ismael Apolinário <ismaelapolinario@hotmail.com>

USER root

### Atualiza os pacotes da imagem
RUN apt-get update \
    && apt-get install -y sudo \
    git \
    && rm -rf /var/lib/apt/list/*


    
