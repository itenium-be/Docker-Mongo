#! /bin/bash

# Convert public website "id" json to "_id: {$oid}" bson that can be imported by Mongo.

# No longer mapped in docker-compose because already executed against the mongo-seed jsons
# example "id": "5a2ae6a56a0de608c87c7576" --> "_id": { "$oid":"5a2ae6a56a0de608c87c7576"}

echo "Converting json ids to _id{oid}s"
search_directory="/mongo-seed-jsons"

for file in "$search_directory"/*.json
do
  echo "reading file ${file}"
  data=`cat ${file}`

  sed -i -e 's/\"id\":\s\?\"\([a-z0-9]*\)\"/"_id": { "$oid":"\1"}/g' $file

done

$SHELL
