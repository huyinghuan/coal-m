### Coal-M

 simple package mongoose. [github](https://github.com/huyinghuan/coal-m)
 
 
### Install

```

npm install coal-m --save

```

### Getting start

```
_CoalM = require 'coal-m'

coal = new _CoalM(config)

Book = coal.model('book')

Book.create({xxx:xxx}, (err, xxx)->)
```

### What is config?

```
module.exports =
  username: false 
  password: false
  ip: "localhost"
  port: "27017"
  options: {}
  database: "testCoalM"
  schema: "schema directory"
```

what is schema? 

schema is a directory what save model files.

a model file like this:

```
module.exports =
  name: "book"
  fields:
    title:  String
    author: String
    body:   String
    comments: [{ body: String, date: Date }]
    date: { type: Date, default: Date.now }
```

so. you can get a Model by ```_coal.modal(schemaName)```

Details see the test directory in [github](https://github.com/huyinghuan/coal-m/tree/master/test)