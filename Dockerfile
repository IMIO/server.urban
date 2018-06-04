FROM docker-staging.imio.be/base:latest
ARG user_id=1000
ARG group_id=1000
# Removed libtiff5-dev
RUN utily="python-pip" \
  && buildDeps="libpq-dev wget git python-virtualenv gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libffi-dev libjpeg62-dev libopenjp2-7-dev zlib1g-dev python-dev" \
  && runDeps="poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7" \
  && apt-get update \
  && apt-get install -y --no-install-recommends $buildDeps \
  && apt-get install -y --no-install-recommends $utily \
  && pip install pip==10.0.1 \
  && mkdir /home/imio/urban
COPY *.cfg *.py *.txt /home/imio/urban/
RUN chown imio:imio -R /home/imio/urban/
WORKDIR /home/imio/urban
USER imio
RUN pip install --user -I -r requirements.txt \
 && PATH=/home/imio/.local/bin:$PATH \
 && buildout -c prod.cfg
RUN apt-get purge -y --auto-remove $buildDeps \
  && apt-get install -y --no-install-recommends $runDeps \
  && rm -rf /var/lib/apt/lists/*
