// module  is self contained   ,   require will include   
//require('./greet.js');

//cannot do this below
// greet();

//var greet = require('./greet.js');
var greet = require('./greet'); // assumes  .js        
greet();


// object literal    with name/value pairs

var person = {
    firstname: 'John',
    lastname: 'Doe',
    greet: function() {
        console.log('hello, ' + this.firstname + ' ' + this.lastname);
    }

};


person.greet();

// output property of the object 
console.log(person['firstname']);

// Prototypal inheritance  

// inheritance  = one object gets access to properties and methods of another object 
// the way javascript inheritance works is Prototypal inheritance 

// e.g.  

// obj      obj.prop1     every object references a prototype     proto {}     obj.prop2 
// obj.prop3     prototype chain   - sequence of objects  


// function constructor  =  normal function that is used to construct objects 
// new keyword    ,  execute the function 

function Person(firstname, lastname) {
    
    // empty object
    this.firstname = firstname;
    this.lastname = lastname;


}

// new keyword  , when it executes  it returns it  
var john = new Person('xJohn', 'Doe');

console.log(john.firstname);


Person.prototype.greet = function() {
    console.log('hi ' + this.firstname + ' ' + this.lastname);
};

john.greet();   // search down the prototype chain

//testing 
console.log(john.__proto__);  // proto of ,  has the 


//pass by value
function change(b) {
    b = 2;
}

var a = 1;
change(a);
console.log(a);   //  prints 1  because "a" is a primitive value  what happened inside the change function did not impact "a""


//pass by reference 

function changeObj(d) {  // d points same place in memory as c
    d.prop1 = function() {};
    d.prop2 = {};
}

var c = {};
c.prop1 = {};
changeObj(c);
console.log(c);  //  

// =================================

// scope  is where in code you have access to particular variable or function 

// IIFE 
(function() {
    var firstname = 'Tom';
    console.log(firstname);

}());   // ()  immediately invokes (calls) it

// because of scope , IIFE is protected within that function, it is scoped that way thus we can can run below with same variable name
var firstname = 'Other';
console.log(firstname);