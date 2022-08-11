.PHONY: test vendor vendorupdate

UID=$(shell id -u)
GID=$(shell id -g)
DOCKER=docker-compose -f .docker/docker-compose.yml


system-init:
	if [ ! -d "vendor" ]; then \
		echo "Installing dependencies"; \
		${DOCKER} run --rm -u ${UID}:${GID} php composer install; \
	fi

system-run:
	${DOCKER} up -d

system-stop:
	${DOCKER} down

run-php:
	${DOCKER} exec php bash

test:
	${DOCKER} run phpcli vendor/bin/phpunit -c phpunit.xml.dist

vendor: composer.json
	${DOCKER} run --rm -u ${UID}:${GID} php composer install

vendor-update: composer.json
	${DOCKER} run -u ${UID}:${GID} php composer update
