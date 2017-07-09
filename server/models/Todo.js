import mongoose from 'mongoose';

const todoSchema = mongoose.Schema({
    id: Number,
    text: String,
    completed: Boolean
});

const Todo = mongoose.model('Todo', todoSchema);