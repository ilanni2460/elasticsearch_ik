FROM dockerhub.azk8s.cn/library/elasticsearch:6.7.2
MAINTAINER 烂泥行天下 <ilanni@ilanni.cn>

ENV ES_VERSION="6.7.2"

RUN set -xe \
&& elasticsearch-plugin install --batch https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v${ES_VERSION}/elasticsearch-analysis-ik-${ES_VERSION}.zip
