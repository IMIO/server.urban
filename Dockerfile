FROM docker-staging.imio.be/base:latest
RUN mkdir /home/imio/imio-urban
RUN chown imio:imio -R /home/imio/imio-urban/
WORKDIR /home/imio/imio-urban
RUN apt-get -qy update && apt-get -qy install build-essential rsync gcc python27 python27-virtualenv python27-setuptools libxml2-dev libxslt1-dev zlib1g-dev libjpeg-dev lynx subversion python-virtualenv git python-dev libsasl2-dev libldap2-dev
RUN svn checkout http://svn.communesplone.org/svn/communesplone/buildout/server.urban/tags/urban20-liege
WORKDIR /home/imio/imio-urban/urban20-liege
RUN virtualenv --no-site-packages .
RUN bin/easy_install -U setuptools
RUN bin/python bootstrap.py -v 2.5.0
RUN bin/subproducts.sh
RUN apt-get -qy install libpq-dev
RUN bin/buildout -vt 5
RUN apt-get remove -y gcc gcc-4.8 cpp-4.8 zsh-common libruby1.9.1 &&\
    apt-get autoremove -y &&\
    apt-get clean
RUN chown imio.imio /home/imio/imio-urban -R
USER imio
ENV HOME /home/imio/imio-urban
ENV ZEO_HOST db
ENV ZEO_PORT 8100
ENV HOSTNAME_HOST local
ENV PROJECT_ID imio
