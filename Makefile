up: _setEnv _docker-compose-up
stop: _setEnv _docker-compose-stop
down: _setEnv _docker-compose-down

_setEnv:
	./start.sh

_docker-compose-up:
	docker-compose up -d --build

_docker-compose-stop:
	docker-compose stop

_docker-compose-down:
	docker-compose down