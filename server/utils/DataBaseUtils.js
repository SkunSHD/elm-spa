import mongoose from 'mongoose';
import  '../models/Todo';

// crutch for deleting a node deprication message
mongoose.Promise = global.Promise;


const Todo = mongoose.model('Todo');

export function setUpConnection() {
	mongoose.connect('mongodb://localhost/todoapp').then(
		()=> console.log('Connection have been open!'),
		err=> console.log('Some sh*t happend: ', err)
	);
}

export function listTodos() {
	return Todo.find();
}

export function createTodo(data) {
	const todo = new Todo({
		id: data.id
		, text: data.text
		, complete: data.complete
	});

	return todo.save();
}

export function deleteTodo(id) {
	return Todo.findBuId(id).remove();
}

export function randId() {
	return Math.floor((Math.random() * 100));
}