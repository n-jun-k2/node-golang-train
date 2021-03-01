.PHONY: up
up:
	docker-compose up -d

.PHONY: down
down:
	docker-compose down

.PHONY: login
login:
	docker-compose exec $(service) /bin/bash

.PHONY: exec
exec:
	docker-compose exec $(service) /bin/bash -c  "$(cmd)"

.PHONY: clean
clean:
	docker image prune
	docker volume prune
	docker network prune