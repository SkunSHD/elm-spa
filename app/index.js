var express = require('express');

var graphqlHTTP = require('express-graphql');
var { buildSchema } = require('graphql');
var path = require('path');


// Construct a schema, using GraphQL schema language
var schema = buildSchema(`
  type Query {
    hello: String
  }
`);

// The root provides a resolver function for each API endpoint
var root = {
  hello: () => {
    return 'Hello world!';
  },
};

var app = express();
app.use(express.static(__dirname));

app.use('/graphql', graphqlHTTP({
  schema: schema,
  rootValue: root,
  graphiql: true,
}));

app.listen(5000, ()=> {
	console.log('Running a GraphQL API server at localhost:5000/graphql');
});



// 'use strict';

// var express = require('express');
// var app = express();
// var path = require('path');


// // mount all static files
// app.use(express.static(__dirname));

// app.listen(5000);

// // mongodb connection part //
// var MongoClient = require('mongodb').MongoClient
//   , assert = require('assert');

// var url = 'mongodb://localhost:27017/myproject';

// MongoClient.connect(url, function(err, db) {
//   assert.equal(null, err);
//   console.log("Connected successfully to server");

//   db.close();
// });