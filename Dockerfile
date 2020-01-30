FROM docker-staging.imio.be/iaurban/mutual:cache

LABEL plone=$PLONE_VERSION \
  os="ubuntu" \
  os.version="18.04" \
  name="Urban 2.4" \
  description="Urban 2.4" \
  version="2.4" \
  maintainer="IMIO"

COPY --chown=imio docker-initialize.py docker-entrypoint.sh /

USER imio

WORKDIR /home/imio/server.urban

RUN mkdir -p var/filestorage/ \
  && touch var/filestorage/Data.fs \
  && bin/buildout -c prod.cfg

USER root

RUN apt-get purge -y \
   build-essential \
   libreadline-dev \
   wget \
   git \
   subversion \
   libpcre3-dev \
   libssl-dev \
   libxml2-dev \
   libxslt1-dev \
   libbz2-dev \
   libffi-dev \
   libjpeg62-dev \
   libopenjp2-7-dev \
   zlib1g-dev \
   python-dev \
   python-pip \
   virtualenv

RUN apt-get autoremove -y \
  && apt-get clean autoclean \
  && rm -rf /home/imio/.buildout/downloads/ /var/lib/apt/lists/* /tmp/* /var/tmp/* /home/imio/.cache /home/imio/.local

USER imio
WORKDIR /home/imio/server.urban
ENV ZEO_HOST=db \
 ZEO_PORT=8100 \
 HOSTNAME_HOST=local \
 PROJECT_ID=imio

EXPOSE 8081
ENTRYPOINT ["/docker-entrypoint.sh"]

