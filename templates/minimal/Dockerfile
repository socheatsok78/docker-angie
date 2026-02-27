ARG ANGIE_VERSION

FROM ghcr.io/socheatsok78/angie:${ANGIE_VERSION:-latest} AS angie-console-light

FROM docker.angie.software/angie:${ANGIE_VERSION}-minimal

ADD entrypoint/ /
RUN apk add --no-cache gettext-envsubst

RUN ln -s /etc/angie /etc/nginx \
    && ln -s /var/log/angie /var/log/nginx \
    && mv /etc/angie/http.d/ /etc/angie/conf.d/ \
    && rm -rf /etc/angie/stream.d \
    && sed -i 's/\/etc\/angie\/http.d\/\*\.conf;/\/etc\/angie\/conf.d\/\*\.conf;/g' /etc/angie/angie.conf \
    && sed -i '/#stream {/,/}/d' /etc/angie/angie.conf

COPY --from=angie-console-light /usr/share/angie-console-light /usr/share/angie-console-light

ENTRYPOINT [ "/docker-entrypoint-shim.sh" ]
CMD [ "angie", "-g", "daemon off;" ]
