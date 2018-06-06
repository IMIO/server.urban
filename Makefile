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
buildout: src buildout.cfg
	docker-compose run zeo "buildout -c dev.cfg"

bin/instance: buildout.cfg bin/buildout
	bin/buildout -t 60

.PHONY: run
run: bin/instance
	bin/instance fg

docker-image:
	docker build --pull -t docker-staging.imio.be/iaurban/mutual:latest .

.PHONY: cleanall
cleanall:
	rm -fr bin include lib develop-eggs downloads eggs parts .installed.cfg
	docker-compose down

build:
	docker-compose build --pull
	make buildout

up:
	docker-compose up
