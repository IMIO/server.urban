#!/usr/bin/make
#

options =
plonesites = parts/omelette/Products/urban/scripts/config/plonesites.cfg
extras = parts/omelette/Products/urban/scripts/config/extras.py.tmpl
mountpoints = parts/omelette/Products/urban/scripts/config/mount_points.conf

all: run

buildout.cfg:
	ln -fs dev.cfg buildout.cfg

bin/pip:
	virtualenv-2.7 .

bin/buildout: bin/pip
	./bin/pip install -r requirements.txt

.PHONY: buildout
buildout: bin/buildout buildout.cfg
	bin/buildout -t 60

.PHONY: run
run: bin/buildout
	bin/instance1 fg

docker-image:
	docker build --pull -t docker-staging.imio.be/iaurban/mutual:latest .

.PHONY: cleanall
cleanall:
	rm -fr bin include lib develop-eggs downloads eggs parts .installed.cfg
