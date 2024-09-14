// process.env: available from mongo 6+
db.createUser({
  user: 'user2',
  pwd: 'thaPwd',
  roles: [{
    role: 'read',
    db: process.env.MONGO_INITDB_DATABASE
  }]
})
