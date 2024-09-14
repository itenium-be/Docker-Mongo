set -e

mongosh <<EOF
use $MONGO_INITDB_DATABASE
db.createUser({
  user: '$OTHER_USER',
  pwd: '$OTHER_PWD',
  roles: [{
    role: 'read',
    db: '$MONGO_INITDB_DATABASE'
  }]
})
EOF
