FROM --platform=$BUILDPLATFORM nginx:stable-alpine AS nginx

# Modify all files in /docker-entrypoint.d by replacing "etc/nginx" with "etc/angie"
RUN sed -i 's/nginx/angie/g' /docker-entrypoint.sh
RUN find /docker-entrypoint.d -type f -exec sed -i 's/NGINX_/ANGIE_/g' {} \;
RUN find /docker-entrypoint.d -type f -exec sed -i 's/nginx.conf/angie.conf/g' {} \;
RUN find /docker-entrypoint.d -type f -exec sed -i 's/etc\/nginx/etc\/angie/g' {} \;
RUN rm /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh

FROM scratch
COPY --from=nginx /docker-entrypoint.sh /docker-entrypoint.sh
COPY --from=nginx /docker-entrypoint.d /docker-entrypoint.d
