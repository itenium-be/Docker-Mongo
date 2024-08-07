#! /bin/bash

mongoimport --help


echo "Importing json data into mongo"

mongoimport --db $MONGO_INITDB_DATABASE --collection celebrities \
  --jsonArray \
  --file /mongo-seed-jsons/celebrities.json \
  --authenticationDatabase admin --username $MONGO_INITDB_ROOT_USERNAME --password $MONGO_INITDB_ROOT_PASSWORD



MONGO_DB=${MONGO_INITDB_DATABASE}
MONGO_USER=${MONGO_INITDB_ROOT_USERNAME}
MONGO_PWD=${MONGO_INITDB_ROOT_PASSWORD}

mongoimport --db $MONGO_DB --collection socials \
  --file /mongo-seed-jsons/socials.json \
  --authenticationDatabase admin --username $MONGO_USER --password $MONGO_PWD
