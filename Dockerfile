FROM x110dc/base
MAINTAINER Ludek Vesely <ludek.vesely@email.com>

RUN apt-get update && apt-get install -yq  nginx && rm /etc/nginx/sites-enabled/default

EXPOSE 80

ENV SERVER_NAME reports-auth.adboos.com
ENV PROTO http
ENV UPSTREAM_ADDRESS reports
ENV UPSTREAM_PORT 5601

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

ADD proxy.conf /etc/nginx/conf.d/
ADD run.sh /

CMD /run.sh

