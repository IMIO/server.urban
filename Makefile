#!/usr/bin/make
#

options =
plonesites = parts/omelette/Products/urban/scripts/config/plonesites.cfg 
extras = parts/omelette/Products/urban/scripts/config/extras.py.tmpl
mountpoints = parts/omelette/Products/urban/scripts/config/mount_points.conf

all: run

.PHONY: bootstrap
bootstrap:
	virtualenv-2.7 --no-site-packages .
	./bin/easy_install -U setuptools
	./bin/python bootstrap.py -v 2.5.0
	./bin/subproducts.sh

.PHONY: buildout
buildout:
	if ! test -f bin/buildout;then make bootstrap;fi
	bin/buildout -vt 5
	if ! test -f var/filestorage/Data.fs;then make standard-config; else bin/buildout -v;fi

.PHONY: standard-config
standard-config:
	if ! test -f bin/buildout;then make bootstrap;fi
	bin/buildout -vt 5 -c standard-config.cfg

.PHONY: run
run:
	if ! test -f bin/instance1;then make buildout;fi
	bin/instance1 fg

.PHONY: cleanall
cleanall:
	rm -fr develop-eggs downloads eggs parts .installed.cfg bin/buildout bin/instance1

.PHONY: libraries
libraries: 
	./bin/subproducts.sh

bin/templates:
	./bin/buildout -vt 5 install templates
	touch $@

bin/templates_per_site: 
	./bin/buildout -vt 5 install templates
	touch $@

mount_points.conf: bin/templates $(mountpoints)
	bin/templates -i $(mountpoints) -s /srv/urbanmap/urbanMap/config/pylon_instances.txt > $@

pre_extras: bin/templates_per_site $(extras) /srv/urbanmap/urbanMap/config/pylon_instances.txt
	bin/templates_per_site -i $(extras) -d pre_extras -e py -s /srv/urbanmap/urbanMap/config/pylon_instances.txt

plonesites.cfg: bin/templates $(plonesites) pre_extras
	bin/templates -i $(plonesites) -s /srv/urbanmap/urbanMap/config/pylon_instances.txt > plonesites.cfg

portals: portals.cfg
	./bin/buildout -vt 5 -c portals.cfg
