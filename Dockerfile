FROM imiobe/plone-base:4.3.20-ubuntu as builder

COPY --chown=imio *.cfg requirements.txt /plone/

WORKDIR /plone

RUN buildDeps="libpq-dev wget git gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libffi-dev libjpeg62-dev libopenjp2-7-dev zlib1g-dev python2-dev gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7 python2 libldap-dev libsasl2-dev" \
  && apt-get update \
  && apt-get install -y --no-install-recommends $buildDeps

RUN curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py \
  && python2 get-pip.py \
  && pip2 install -r requirements.txt

RUN buildout -c docker.cfg

FROM imiobe/plone-base:4.3.20-ubuntu

ENV PLONE_MAJOR=4.3 \
  PLONE_VERSION=4.3.20 \
  TZ=Europe/Brussels \
  HOSTNAME_HOST=local \
  PROJECT_ID=imio \
  SMTP_QUEUE_DIRECTORY=/data/queue \
  ZEO_ADDRESS=zeo:8100 \
  OO_SERVER=libreoffice \
  OO_PORT=2002 \
  PYTHON_UNO=/usr/bin/python3 \
  USE_STREAM=False \
  CUSTOM_TMP=/var/tmp \
  ACTIVE_BIGBANG=True

LABEL plone=$PLONE_VERSION \
  os="ubuntu" \
  name="Plone $PLONE_VERSION" \
  description="Plone image for urban" \
  maintainer="IMIO"

RUN apt-get update && apt-get install -y --no-install-recommends \
  libmemcached11 \
  libpq5 \
  lynx \
  netcat \
  python3-distutils \
  rsync \
  wget \
  wv \
  default-jre-headless \
  file \
  ghostscript \
  graphicsmagick \
  imagemagick \
  lbzip2 \
  ldap-utils \
  libmagic1 \
  libreoffice-calc \
  libreoffice-java-common \
  libreoffice-script-provider-python \
  libreoffice-writer \
  libsigc++-2.0-0v5 \
  poppler-data \
  ruby \
  zint \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && gem install docsplit

COPY --chown=imio --from=builder /plone /plone
COPY --chown=imio docker-initialize.py docker-entrypoint.sh requirements.txt /

RUN curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py \
  && python2 get-pip.py \
  && pip2 install -r requirements.txt

USER imio
VOLUME /data/blobstorage
VOLUME /data/filestorage
WORKDIR /plone
EXPOSE 8081

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["start"]
