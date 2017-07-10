var mongoose = require('mongoose');
var Schema = mongoose.Schema;
var serverSchema = new Schema({
    Name: String,
    Type: String,
    OS: String,
    ExternalIps: String,
    InternalIps: String,
    Databases: String,
    Notes: String
},{collection: 'server'});

var Server = mongoose.model('server', serverSchema);
module.exports = Server;