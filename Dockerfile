FROM docker.elastic.co/elasticsearch/elasticsearch:7.12.0

MAINTAINER Lewis Voncken <lewis@experius.nl>

ENV discovery.type="single-node"

ENV http.port=9200

EXPOSE 9200/tcp
