// IIFE  ( immmediately invoked function expression)

(function (){
    "use strict";  // strict typing 

    angular
        .module("common.services")  // Author : Tom Stickel   -- look up module to use
        .factory("deviceResource",  // Register the New Factory   name of the factory service, 
                 ["$resource",      // 2nd parameter is an array   first elements in the array are the string names 
                 deviceResource]);                  // BTW  this is called "Min-Safe Array"  
                                    // last element of the array is factory service function 
                                    // reference to it 

    function deviceResource($resource) {     // inject $resource in 
        //return $resource("api/products/:productId");
         return $resource("/api/devices/:DeviceId");    
    } 


                
}());