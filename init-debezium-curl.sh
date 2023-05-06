#!/bin/bash

curl -i -X POST -H "Accept:application/json" \
    -H "Content-Type:application/json" \
    -d @es-sink.json \
    "http://localhost:8083/connectors/"

curl -i -X POST -H "Accept:application/json" \
    -H "Content-Type:application/json" \
     -d @mysql-sink.json \
    "http://localhost:8083/connectors/"
