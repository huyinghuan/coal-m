_path = require 'path'

module.exports =
  username: false
  password: false
  ip: "localhost"
  port: "27017"
  options: {}
  database: "testCoalM"
  schema: _path.join(__dirname, "schema")