### Easticsearch image for Bitbucket Pipelines
Bitbucket pipelines does not allow you to use dot notation in variables. So I created my own elastic search docker image to include the discovery type.

## Version
Elasticsearch 7.12.0

## Hub
https://hub.docker.com/repository/docker/experiusnl/elasticsearch

## Example
```
definitions:
  steps:
    - step: &run-tests
        name: Run tests
        script:
          - sleep 30 # Waiting elasticsearch. In your real pipeline you can not use it.
          - curl -XGET localhost:9200/_cat/health
        services:
          - elasticsearch
  services:
    elasticsearch:
      image: experiusnl/elasticsearch
      variables:
        ES_JAVA_OPTS: '-Xms512m -Xmx512m'
    docker:
      memory: 2048

pipelines:
  pull-requests:
    '**':
      - step: *run-tests
```
