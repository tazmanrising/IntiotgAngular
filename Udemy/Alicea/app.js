var myApp = angular.module('myApp', ['ngRoute']);

myApp.config(function ($routeProvider) {

    $routeProvider

        .when('/', {
            templateUrl: 'pages/main.html',
            controller: 'mainController'
        })

        .when('/second', {
            templateUrl: 'pages/second.html',
            controller: 'secondController'
        })

        .when('/second/:num', {
            templateUrl: 'pages/second.html',
            controller: 'secondController'
        })
        .otherwise({ redirectTo: 'index.htm#' });
});

myApp.controller('mainController', ['$scope', '$log', function ($scope, $log) {

    // add a person object to scope   , the model
    // person sitting on the scope

    // can be dangerous ... if the directive is doing things to the scope 
    // scope is being directly used on the page 

    $scope.person = {
        name: 'John Doe',
        address: '555 Main St., New York, NY 11111'
    }

    // ISOLATE the Scope is important instead to do 



}]);

myApp.controller('secondController', ['$scope', '$log', '$routeParams', function ($scope, $log, $routeParams) {



}]);

myApp.directive("searchResult", function () {
    return {
        restrict: 'AEC',  // attribute , elements , class , comments (M)
        templateUrl: 'directives/searchresult.html',
        //template: '<a href="#" class="list-group-item"><h4 class="list-group-item-heading">Doe, John</h4><p class="list-group-item-text">555 Main St., New York, NY 11111</p></a>',
        replace: true,
        scope: {  
                // instead of personName @   normalization  , lets pass entire person object
                personObject: "="  // equals is TWO WAY BINDING in the scope , 
                // now we are passing object down 
                
                 // this is the scope model  NOT what is the scope model in the controller  , it is isolated in its own garden
                 //personName: "@", // local name  normalized  @ = text    person.name in main.html that attribute is personName camelcase   
                 //personAddress: "@"   // this is not even a child scope , it is on its own 
                // however u can poke holes through the wall
                // you can't access scope in controller 
                // poke holes are with using custom attributes 
        } // isolate the scope 
    }
});
