
//npm  package
// reference to express
var express = require('express');

// create an instance of express
var app = express();

// add mssql 
var sql = require('mssql');
var config = {
    user: 'sa',
    password: 'Gigi$1862',
    server: 'DESKTOP-RSKHI4E', // you can use  'localhost\\instance for connecting to a named instance
    database: 'Books',
    options: {
        port: 1433,
        encrypt: false // use true if on windows azure 
    }
};

// OPEN connection
sql.connect(config, function(err){
    console.log(err);
})

//process.env.PORT
var port = process.env.PORT || 5000;
var nav = [{
    Link: '/Books',
    Text: 'Book'
},{
    Link: '/Authors',
    Text: 'Author'
}];

//var bookRouter = express.Router();
var bookRouter = require('./src/routes/bookRoutes')(nav);

//Setup app.use   middleware  used by express first
// setup the public static directory
app.use(express.static('public'));

//serve html back up

//app.use(express.static('src/views'));
// commenting out above for below
app.set('views', './src/views');
// view engine ejs
app.set('view engine', 'ejs');

app.use('/Books', bookRouter);

// npmjs.com     mssql
//  npm install --save mssql

app.get('/', function (req, res) {
    //res.render('index', {title: 'Hello from render',list: ['a','b']});
    res.render('index', {
        title: 'Hello from render',
        nav: [{
            Link: '/Books',
            Text: 'Books'
        }, {
            Link: '/Authors',
            Text: 'Authors'
        }]
    });
});

// pass express 2 things    request from router
// header/body etc     response will be sent back
//app.get('/', function(req, res){
//    res.send('hello world');
//});

app.get('/books', function (req, res) {
    res.send('hello books');
});

// listen with a callback
app.listen(port, function (err) {
    console.log('running server on port ' + port);
});

// node app.js

//npm install --save-dev jshint gulp-jshint


// BOWER
// npm install bower -g
// bower init
// bower install --save bootstrap

// create file   .bowerrc

// npm install -g gulp
// HAVE to ALSO do a LOCAL INSTALL of gulp TOO
// npm install gulp --save-dev    ,  this is for devdependency , no need for prod



//  node   anyfile.js   etc...

// npm start   ... knows what file



//npm install --save-dev gulp-jshint
// npm install --save-dev gulp-jscs jshint-stylish


// npm init     this creates the package.json  asking questions  etc

// after  then use   npm install express --save

// --save will SAVE the dependency into the package.json file

// carrot in front

// ^4.14.1      npm will install any major version

// 4.13  will allow 4.14

//  ~4.14.5   it will allow minor version like
// 4.14.6  ,  BUT NOT  4.15

// take the largest minor version , vs taking the largest major version
