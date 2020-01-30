#!/usr/bin/make
#

all: run

buildout.cfg:
	ln -fs dev.cfg buildout.cfg

bin/pip:
	virtualenv-2.7 .

bin/buildout: bin/pip
	./bin/pip install -r requirements.txt

src:
	mkdir src

.PHONY: buildout
buildout:
	bin/buildout -c dev.cfg

bin/instance: buildout.cfg bin/buildout
	bin/buildout -t 60

.PHONY: run
run: bin/instance
	bin/instance fg

docker-image:
	docker build --pull -t docker-staging.imio.be/iaurban/mutual:latest .

.PHONY: cache
cache:
	docker build --pull -t docker-staging.imio.be/iaurban/mutual:cache -f Dockerfile-cache .

.PHONY: eggs
eggs:  ## Copy eggs from docker image to speed up docker build
	rm -Rf eggs
	mkdir -p eggs
	# docker pull $(IMAGE_NAME)
	docker run --entrypoint='' urban_buildout_cache_24  tar -c -C /home/imio/server.urban eggs | tar x

.PHONY: cleanall
cleanall:
	rm -fr bin include lib develop-eggs downloads eggs parts .installed.cfg
	docker-compose down

build:
	mkdir -p var/blobstorage
	mkdir -p var/filestorage
	mkdir -p var/urban
	docker-compose build --pull
	make buildout

up:
	docker-compose up

bash:
	docker-compose run -p 8081:8081 instance
