assert = require 'assert'
_CoalM = require '../lib/index'
_config = require './config'

coal = new _CoalM(_config)

describe("Database", ->

  it.only("save", (done)->
    Book = coal.model('book')

    Book.create({title: "123"}, (err, small)->
      console.log err if err
      console.log small
      done()
    )
  )

)