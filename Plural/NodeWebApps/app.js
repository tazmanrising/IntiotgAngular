
//npm  package    
// reference to express 
var express = require('express');

// create an instance of express
var app = express();

var port = 5000;

//Setup app.use   middleware  used by express first

// setup the public static directory
app.use(express.static('public'))

//serve html back up

app.use(express.static('src/views'));




// pass express 2 things    request from router 
// header/body etc     response will be sent back
app.get('/', function(req, res){
    res.send('hello world');
});

app.get('/books', function(req, res){
    res.send('hello books');
});

// listen with a callback 
app.listen(port, function(err){
    console.log('running server on port ' + port);
});

// node app.js  


// BOWER
// npm install bower -g 
// bower init 
// bower install --save bootstrap 

// create file   .bowerrc  




//  node   anyfile.js   etc...

// npm start   ... knows what file 





// npm init     this creates the package.json  asking questions  etc..  

// after  then use   npm install express --save  

// --save will SAVE the dependency into the package.json file

// carrot in front

// ^4.14.1      npm will install any major version

// 4.13  will allow 4.14 

//  ~4.14.5   it will allow minor version like
// 4.14.6  ,  BUT NOT  4.15   

// take the largest minor version , vs taking the largest major version
