FROM debezium/connect:2.2

ENV KAFKA_CONNECT_PLUGINS_DIR=/kafka/connect

# see: https://github.com/confluentinc/kafka-connect-elasticsearch/blob/v14.0.3/pom.xml
# released: https://packages.confluent.io/maven/io/confluent/kafka-connect-elasticsearch/
# project/version, project/proeprties/es.version
ENV KAFKA_CONNECT_ELASTICSEARCH_VERSION="14.0.3"
ENV ELASTICSEARCH_VERSION="7.17.3"
ENV APACHE_HTTPCOMPONENTS_VERSION="4.5.13"

RUN mkdir -p ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector

RUN curl -sfSL https://packages.confluent.io/maven/io/confluent/kafka-connect-elasticsearch/${KAFKA_CONNECT_ELASTICSEARCH_VERSION}/kafka-connect-elasticsearch-${KAFKA_CONNECT_ELASTICSEARCH_VERSION}.jar \
    -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/kafka-connect-elasticsearch-${KAFKA_CONNECT_ELASTICSEARCH_VERSION}.jar

RUN curl -sfSL https://repo1.maven.org/maven2/org/elasticsearch/client/elasticsearch-rest-client/${ELASTICSEARCH_VERSION}/elasticsearch-rest-client-${ELASTICSEARCH_VERSION}.jar \
    -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/elasticsearch-rest-client-${ELASTICSEARCH_VERSION}.jar

RUN curl -sfSL https://repo1.maven.org/maven2/org/elasticsearch/client/elasticsearch-rest-client-sniffer/${ELASTICSEARCH_VERSION}/elasticsearch-rest-client-sniffer-${ELASTICSEARCH_VERSION}.jar \
    -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/elasticsearch-rest-client-sniffer-${ELASTICSEARCH_VERSION}.jar

RUN curl -sfSL https://repo1.maven.org/maven2/org/elasticsearch/client/elasticsearch-rest-high-level-client/${ELASTICSEARCH_VERSION}/elasticsearch-rest-high-level-client-${ELASTICSEARCH_VERSION}.jar \
    -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/elasticsearch-rest-high-level-client-${ELASTICSEARCH_VERSION}.jar

RUN curl -sfSL https://repo1.maven.org/maven2/org/elasticsearch/elasticsearch/${ELASTICSEARCH_VERSION}/elasticsearch-${ELASTICSEARCH_VERSION}.jar \
    -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/elasticsearch-${ELASTICSEARCH_VERSION}.jar

RUN curl -sfSL https://repo1.maven.org/maven2/org/elasticsearch/elasticsearch-x-content/${ELASTICSEARCH_VERSION}/elasticsearch-x-content-${ELASTICSEARCH_VERSION}.jar \
    -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/elasticsearch-x-content-${ELASTICSEARCH_VERSION}.jar \

RUN curl -sfSL https://repo1.maven.org/maven2/org/apache/httpcomponents/httpclient/${APACHE_HTTPCOMPONENTS_VERSION}/httpclient-${APACHE_HTTPCOMPONENTS_VERSION}.jar \
    -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/httpclient-${APACHE_HTTPCOMPONENTS_VERSION}.jar

