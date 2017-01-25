//var a = 1;
//var b = 2;
//var c = a + b;

//console.log(c);



function greet(){
    console.log('hi');
}

greet();

function logGreeting(fn) {
    fn();
}

// pass a function to a function     function  it is 1st class 

// not putting in ()  
logGreeting(greet);


// function expression    , it is a block of code  with value

// variable points to an anonymous function  of which is a 1st class function expression 
var greetMe = function () {
    console.log('fx exp');
}

greetMe(); 

logGreeting(greetMe);

//  use a function expression on the fly

logGreeting(function() {
   console.log('hello');
});