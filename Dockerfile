FROM alpine:latest
MAINTAINER jsx <shuanxi.jia@availink.com>
RUN apk add --no-cache squid curl && \
        chown -R squid:squid /var/cache/squid && \
        chown -R squid:squid /var/log/squid 
ADD start-squid.sh /start-squid.sh
RUN chmod +x /start-squid.sh && squid -z
EXPOSE 3128
ENTRYPOINT ["/start-squid.sh"]
