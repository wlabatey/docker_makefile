DOCKER = 'docker'
DOCKER_COMPOSE = 'docker-compose'

COMPOSE_FILE_PROD = 'docker-compose.yml'

clear-all: clear-con clear-img

clear-con:
	$(DOCKER) stop `$(DOCKER) ps -a -q` && $(DOCKER) rm `$(DOCKER) ps -a -q`

clear-img:
	$(DOCKER) rmi -f `$(DOCKER) images -q`

up:
	$(DOCKER_COMPOSE) -f $(COMPOSE_FILE_PROD) up -d

down:
	$(DOCKER) stop `$(DOCKER) ps -a -q` 
