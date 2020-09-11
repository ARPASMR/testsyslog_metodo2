FROM debian:latest

ENV http_proxy="http://docker:Arpa2019!@proxy2.arpa.local:8080/"
ENV https_proxy="http://docker:Arpa2019!@proxy2.arpa.local:8080/"
ENV no_proxy="localhost,.arpa.local,127.0.0.11,127.0.0.1"

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
#CMD ["/docker-entrypoint.sh"]
