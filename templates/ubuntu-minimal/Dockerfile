FROM ubuntu:noble AS base

ARG ANGIE_VERSION
ARG PKG_RELEASE=1~noble
ARG DYNPKG_RELEASE=1~noble
ARG DEBIAN_FRONTEND=noninteractive
RUN set -x \
     && apt-get update \
     && apt-get install --no-install-recommends --no-install-suggests -y \
          ca-certificates curl \
     && curl -o /etc/apt/trusted.gpg.d/angie-signing.gpg \
          https://angie.software/keys/angie-signing.gpg \
     && echo "deb https://download.angie.software/angie/$(. /etc/os-release && echo "$ID/$VERSION_ID $VERSION_CODENAME") main" \
          > /etc/apt/sources.list.d/angie.list \
     && apt-get update \
     && apt-get install --no-install-recommends --no-install-suggests -y \
          angie=${ANGIE_VERSION}-${PKG_RELEASE} \
          angie-console-light \
     && apt-get install --no-install-recommends --no-install-suggests -y \
          gettext-base \
     && rm -Rf /var/lib/apt/lists \
     && ln -sf /dev/stdout /var/log/angie/access.log \
     && ln -sf /dev/stderr /var/log/angie/error.log

ADD entrypoint/ /
RUN ln -s /etc/angie /etc/nginx \
    && ln -s /var/log/angie /var/log/nginx \
    && mv /etc/angie/http.d/ /etc/angie/conf.d/ \
    && rm -rf /etc/angie/stream.d \
    && sed -i 's/\/etc\/angie\/http.d\/\*\.conf;/\/etc\/angie\/conf.d\/\*\.conf;/g' /etc/angie/angie.conf \
    && sed -i '/#stream {/,/}/d' /etc/angie/angie.conf

FROM scratch
COPY --from=base / /
EXPOSE 80/tcp
ENTRYPOINT [ "/docker-entrypoint-shim.sh" ]
CMD [ "angie", "-g", "daemon off;" ]
