FROM docker.elastic.co/elasticsearch/elasticsearch:7.17.0

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch analysis-icu

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch analysis-phonetic

RUN echo 'http.max_content_length: 500mb' >> /usr/share/elasticsearch/config/elasticsearch.yml

MAINTAINER Lewis Voncken <lewis@experius.nl>

ENV discovery.type="single-node"

ENV http.port=9200

EXPOSE 9200/tcp
