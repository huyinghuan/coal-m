module.exports =
  name: "book"
  fields:
    title:  String
    author: String
    body:   String
    comments: [{ body: String, date: Date }]
    date: { type: Date, default: Date.now }