ARG ANGIE_VERSION
FROM docker.angie.software/angie:${ANGIE_VERSION}-minimal AS base

ADD entrypoint/ /
RUN apk add --no-cache gettext-envsubst

RUN set -x \
    && sed -i 's|/etc/angie/http.d|/etc/angie/conf.d|g' /etc/angie/angie.conf \
    && sed -i '/#stream {/,/}/d' /etc/angie/angie.conf \
    && mv /etc/angie/http.d /etc/angie/conf.d \
    && rm -rf /etc/angie/stream.d \
    && mkdir -p /var/log/nginx \
    && ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

FROM scratch
COPY --from=base / /
EXPOSE 80/tcp
ENTRYPOINT [ "/docker-entrypoint-shim.sh" ]
CMD [ "angie", "-g", "daemon off;" ]
