var mongoose = require('mongoose');
var Schema = mongoose.Schema;
var todoSchema = new Schema({
    username: String,
    todo: String,
    isDone: Boolean,
    hasAttachment: Boolean
});

var Todos = mongoose.model('Todos', todoSchema);
module.exports = Todos;

// now we have a re-usuable model   CRUD   

