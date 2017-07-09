import express from 'express';
import bodyParser from 'body-parser';

import * as db from './utils/DataBaseUtils.js';

db.setUpConnection();

const app = express();

app.use( bodyParser.json() );

app.get('/', (req, res)=> {
	res.send('Hello buddy');
});

app.get('/create', (req, res)=> {
	db.createTodo({
		id: db.randId()
		, text : 'I love rotten tomatoes!'
		, completed: false
	}).then((data)=> res.send(data))
});

app.get('/todos', (req, res)=> {
	db.listTodos().then((data)=> res.send(data));
});

const server = app.listen(3000, ()=> {
	console.log('Running mongodb server at localhost:3000');
});