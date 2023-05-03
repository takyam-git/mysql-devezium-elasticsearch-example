#!/bin/bash

curl -i -X POST -H "Accept:application/json" -H "Content-Type:application/json" http://localhost:8083/connectors/ -d '{
  "name": "mysql-connector",
  "config": {
    "connector.class": "io.debezium.connector.mysql.MySqlConnector",
    "tasks.max": "1",
    "database.hostname": "mysql",
    "database.port": "3306",
    "database.user": "user",
    "database.password": "userpassword",
    "database.server.id": "2",
    "database.server.name": "mysql-server",
    "database.whitelist": "testdb",
    "database.history.kafka.bootstrap.servers": "kafka:9092",
    "database.history.kafka.topic": "dbhistory.testdb",
    "database.allowPublicKeyRetrieval":"true",
    "topic.prefix": "testdb",
    "include.schema.changes": "false",
    "transforms": "unwrap,insertTopic",
    "transforms.unwrap.type": "io.debezium.transforms.ExtractNewRecordState",
    "transforms.insertTopic.type": "org.apache.kafka.connect.transforms.RegexRouter",
    "transforms.insertTopic.regex": "mysql-server.(.*).(.*)",
    "transforms.insertTopic.replacement": "$2"
  }
}';

sleep 1


curl -i -X POST -H "Accept:application/json" -H "Content-Type:application/json" http://localhost:8083/connectors/ -d '{
  "name": "elasticsearch-connector",
  "config": {
    "connector.class": "ElasticsearchSinkConnector",
    "tasks.max": "1",
    "topics": "testdb",
    "key.ignore": "true",
    "schema.ignore": "true",
    "connection.url": "http://elasticsearch:9200",
    "type.name": "_doc",
    "name": "elasticsearch-connector",
    "schema.history.internal.kafka.topic": "sync-test",
    "schema.history.internal.kafka.bootstrap.servers": "kafka:9092"
  }
}';