FROM docker-staging.imio.be/iaurban/cache:latest
# Removed libtiff5-dev
ENV URBAN_DIR /home/imio/urban/
RUN buildDeps="libpq-dev wget git python-virtualenv gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libffi-dev libjpeg62-dev libopenjp2-7-dev zlib1g-dev python-dev" \
  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7" \
  && apt-get update \
  && apt-get install -y --no-install-recommends $buildDeps \
  && mkdir -p $URBAN_DIR \
  && chown imio:imio -R $URBAN_DIR
COPY *.cfg *.py *.txt entrypoint.sh $URBAN_DIR
WORKDIR $URBAN_DIR
USER imio
ENV PATH="/home/imio/.local/bin:${PATH}"
ENV ZEO_HOST db
ENV ZEO_PORT 8100
RUN pip install --user -I -r requirements.txt \
  && buildout -c prod.cfg
USER root
RUN apt-get install -y --no-install-recommends gosu
RUN apt-get install -y libreoffice
RUN apt-get purge -y --auto-remove $buildDeps \
  && apt-get install -y --no-install-recommends $runDeps \
  && rm -rf /var/lib/apt/lists/* \
  && rm -rf /home/imio/.buildout/downloads/*
ENTRYPOINT ["/home/imio/urban/entrypoint.sh"]
