_mongoose = require 'mongoose'
_sload = require 'sload'

_Schema = _mongoose.Schema
class CoalM
  constructor: (@config)->
    @modelObject = {}
    @initConnection()
    @loadSchema()

  initConnection: ->
    username = @config.username
    password = @config.password
    ip = @config.ip
    port = @config.port
    database = @config.database
    if username and password
      url = "mongodb://#{username}:#{password}@#{ip}:#{port}/#{database}"
    else
      url = "mongodb://#{config.ip}:#{port}/#{database}"

    options = @config.options or {}

    _mongoose.connect(url, options)

  loadSchema: ->
    schemaDir = @config.schema
    queue = _sload.scan(schemaDir)
    self = @
    for item in queue
      name = item.name
      self.modelObject[name] = _mongoose(name, new _Schema(item.fields))

  model: (modalName)->
    @modelObject[modalName]

