FROM hub.fimplus.io/repo/init-hd1-movies:v1.1
MAINTAINER Victor Nguyen <vunv@fimplus.vn>
WORKDIR /opt/source/
COPY www www

WORKDIR /etc/nginx
COPY nginx.conf nginx.conf
COPY conf.d conf.d
CMD ["nginx", "-g", "daemon off;"]
