ARG ANGIE_VERSION

FROM docker.angie.software/angie:${ANGIE_VERSION}-rocky

ADD entrypoint/ /
RUN dnf install -y gettext \
    && dnf clean all \
    && rm -rf /var/cache/dnf/*

RUN ln -s /etc/angie /etc/nginx \
    && ln -s /var/log/angie /var/log/nginx \
    && mv /etc/angie/http.d/ /etc/angie/conf.d/ \
    && rm -rf /etc/angie/stream.d \
    && sed -i 's/\/etc\/angie\/http.d\/\*\.conf;/\/etc\/angie\/conf.d\/\*\.conf;/g' /etc/angie/angie.conf \
    && sed -i '/#stream {/,/}/d' /etc/angie/angie.conf

ENTRYPOINT [ "/docker-entrypoint-shim.sh" ]
CMD [ "angie", "-g", "daemon off;" ]
