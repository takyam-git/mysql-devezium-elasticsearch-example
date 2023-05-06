FROM quay.io/debezium/connect:2.2

ENV KAFKA_CONNECT_PLUGINS_DIR=/kafka/connect

# see: https://github.com/confluentinc/kafka-connect-elasticsearch/blob/v14.0.3/pom.xml
# released: https://packages.confluent.io/maven/io/confluent/kafka-connect-elasticsearch/
# project/version, project/proeprties/es.version
ENV KAFKA_CONNECT_ELASTICSEARCH_VERSION="13.1.3"

RUN mkdir -p ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector

RUN curl -sfSL https://packages.confluent.io/maven/io/confluent/kafka-connect-elasticsearch/${KAFKA_CONNECT_ELASTICSEARCH_VERSION}/kafka-connect-elasticsearch-${KAFKA_CONNECT_ELASTICSEARCH_VERSION}.jar \
    -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/kafka-connect-elasticsearch-${KAFKA_CONNECT_ELASTICSEARCH_VERSION}.jar

ENV ELASTICSEARCH_VERSION="7.17.10"

RUN curl -sfSL https://repo1.maven.org/maven2/org/elasticsearch/client/elasticsearch-rest-client/${ELASTICSEARCH_VERSION}/elasticsearch-rest-client-${ELASTICSEARCH_VERSION}.jar \
    -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/elasticsearch-rest-client-${ELASTICSEARCH_VERSION}.jar

# RUN curl -sfSL https://repo1.maven.org/maven2/org/elasticsearch/client/elasticsearch-rest-client-sniffer/${ELASTICSEARCH_VERSION}/elasticsearch-rest-client-sniffer-${ELASTICSEARCH_VERSION}.jar \
#     -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/elasticsearch-rest-client-sniffer-${ELASTICSEARCH_VERSION}.jar

RUN curl -sfSL https://repo1.maven.org/maven2/org/elasticsearch/client/elasticsearch-rest-high-level-client/${ELASTICSEARCH_VERSION}/elasticsearch-rest-high-level-client-${ELASTICSEARCH_VERSION}.jar \
    -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/elasticsearch-rest-high-level-client-${ELASTICSEARCH_VERSION}.jar

RUN curl -sfSL https://repo1.maven.org/maven2/org/elasticsearch/elasticsearch/${ELASTICSEARCH_VERSION}/elasticsearch-${ELASTICSEARCH_VERSION}.jar \
    -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/elasticsearch-${ELASTICSEARCH_VERSION}.jar

RUN curl -sfSL https://repo1.maven.org/maven2/org/elasticsearch/elasticsearch-x-content/${ELASTICSEARCH_VERSION}/elasticsearch-x-content-${ELASTICSEARCH_VERSION}.jar \
    -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/elasticsearch-x-content-${ELASTICSEARCH_VERSION}.jar

RUN curl -sfSL https://repo1.maven.org/maven2/org/elasticsearch/elasticsearch-core/${ELASTICSEARCH_VERSION}/elasticsearch-core-${ELASTICSEARCH_VERSION}.jar \
    -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/elasticsearch-core-${ELASTICSEARCH_VERSION}.jar

RUN curl -sfSL https://repo1.maven.org/maven2/org/elasticsearch/plugin/lang-mustache-client/${ELASTICSEARCH_VERSION}/lang-mustache-client-${ELASTICSEARCH_VERSION}.jar \
    -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/lang-mustache-client-${ELASTICSEARCH_VERSION}.jar

RUN curl -sfSL https://repo1.maven.org/maven2/org/elasticsearch/plugin/rank-eval-client/${ELASTICSEARCH_VERSION}/rank-eval-client-${ELASTICSEARCH_VERSION}.jar \
    -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/rank-eval-client-${ELASTICSEARCH_VERSION}.jar

ENV APACHE_HTTPCOMPONENTS_HTTPCLIENT_VERSION="4.5.13"

RUN curl -sfSL https://repo1.maven.org/maven2/org/apache/httpcomponents/httpclient/${APACHE_HTTPCOMPONENTS_HTTPCLIENT_VERSION}/httpclient-${APACHE_HTTPCOMPONENTS_HTTPCLIENT_VERSION}.jar \
    -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/httpclient-${APACHE_HTTPCOMPONENTS_HTTPCLIENT_VERSION}.jar

ENV APACHE_HTTPCOMPONENTS_HTTPCORE_VERSION="4.4.16"

RUN curl -sfSL https://repo1.maven.org/maven2/org/apache/httpcomponents/httpcore/${APACHE_HTTPCOMPONENTS_HTTPCORE_VERSION}/httpcore-${APACHE_HTTPCOMPONENTS_HTTPCORE_VERSION}.jar \
    -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/httpcore-${APACHE_HTTPCOMPONENTS_HTTPCORE_VERSION}.jar

RUN curl -sfSL https://repo1.maven.org/maven2/org/apache/httpcomponents/httpcore-nio/${APACHE_HTTPCOMPONENTS_HTTPCORE_VERSION}/httpcore-nio-${APACHE_HTTPCOMPONENTS_HTTPCORE_VERSION}.jar \
    -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/httpcore-nio-${APACHE_HTTPCOMPONENTS_HTTPCORE_VERSION}.jar

ENV APACHE_HTTPCOMPONENTS_HTTPASYNCCLIENT_VERSION="4.1.5"

RUN curl -sfSL https://repo1.maven.org/maven2/org/apache/httpcomponents/httpasyncclient/${APACHE_HTTPCOMPONENTS_HTTPASYNCCLIENT_VERSION}/httpasyncclient-${APACHE_HTTPCOMPONENTS_HTTPASYNCCLIENT_VERSION}.jar \
    -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/httpasyncclient-${APACHE_HTTPCOMPONENTS_HTTPASYNCCLIENT_VERSION}.jar

ENV APACHE_LUCENE_LUCENE_CORE_VERSION="8.11.2"

RUN curl -sfSL https://repo1.maven.org/maven2/org/apache/lucene/lucene-core/${APACHE_LUCENE_LUCENE_CORE_VERSION}/lucene-core-${APACHE_LUCENE_LUCENE_CORE_VERSION}.jar \
    -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/lucene-core-${APACHE_LUCENE_LUCENE_CORE_VERSION}.jar

ENV APACHE_LOG4J_VERSION="2.17.1"

RUN curl -sfSL https://repo1.maven.org/maven2/org/apache/logging/log4j/log4j-api/${APACHE_LOG4J_VERSION}/log4j-api-${APACHE_LOG4J_VERSION}.jar \
    -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/log4j-api-${APACHE_LOG4J_VERSION}.jar

ENV APACHE_COMMONS_LOGGING_VERSION="1.2"

RUN curl -sfSL https://repo1.maven.org/maven2/commons-logging/commons-logging/${APACHE_COMMONS_LOGGING_VERSION}/commons-logging-${APACHE_COMMONS_LOGGING_VERSION}.jar \
    -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/commons-logging-${APACHE_COMMONS_LOGGING_VERSION}.jar


ENV APACHE_COMMONS_CODEC_VERSION="1.9"

RUN curl -sfSL https://repo1.maven.org/maven2/commons-codec/commons-codec/${APACHE_COMMONS_CODEC_VERSION}/commons-codec-${APACHE_COMMONS_CODEC_VERSION}.jar \
    -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/commons-codec-${APACHE_COMMONS_CODEC_VERSION}.jar

ENV CARROTSEARCH_HPPC_VERSION="0.9.1"

RUN curl -sfSL https://repo1.maven.org/maven2/com/carrotsearch/hppc/${CARROTSEARCH_HPPC_VERSION}/hppc-${CARROTSEARCH_HPPC_VERSION}.jar \
    -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/hppc-${CARROTSEARCH_HPPC_VERSION}.jar

ENV IO_SEARCHBOX_JEST_VERSION="6.3.1"

RUN curl -sfSL https://repo1.maven.org/maven2/io/searchbox/jest/${IO_SEARCHBOX_JEST_VERSION}/jest-${IO_SEARCHBOX_JEST_VERSION}.jar \
    -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/jest-${IO_SEARCHBOX_JEST_VERSION}.jar

RUN curl -sfSL https://repo1.maven.org/maven2/io/searchbox/jest-common/${IO_SEARCHBOX_JEST_VERSION}/jest-common-${IO_SEARCHBOX_JEST_VERSION}.jar \
    -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/jest-common-${IO_SEARCHBOX_JEST_VERSION}.jar

ENV COM_GOOGLE_CODE_GSON_VERSION="2.9.1"

RUN curl -sfSL https://repo1.maven.org/maven2/com/google/code/gson/gson/${COM_GOOGLE_CODE_GSON_VERSION}/gson-${COM_GOOGLE_CODE_GSON_VERSION}.jar \
    -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/gson-${COM_GOOGLE_CODE_GSON_VERSION}.jar

ENV COM_GOOGLE_GUAVA_VERSION="31.1"

RUN curl -sfSL https://repo1.maven.org/maven2/com/google/guava/guava/${COM_GOOGLE_GUAVA_VERSION}-jre/guava-${COM_GOOGLE_GUAVA_VERSION}-jre.jar \
    -o ${KAFKA_CONNECT_PLUGINS_DIR}/elasticsearch-connector/gson-${COM_GOOGLE_GUAVA_VERSION}-jre.jar

