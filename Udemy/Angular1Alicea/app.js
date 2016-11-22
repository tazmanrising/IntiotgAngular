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
});


myApp.directive("searchResult", function () {
    return {
        restrict: 'AECM',
        template: '<a href="#" class="list-group-item"><h4 class="list-group-item-heading">Doe, John</h4><p class="list-group-item-text">555 Main St., New York, NY 11111</p></a>',
        replace: true
    }
});

myApp.controller('mainController', ['$scope', '$log', function ($scope, $log) {

}]);

myApp.controller('secondController', ['$scope', '$log', '$routeParams', function ($scope, $log, $routeParams) {

}]);



myApp.controller('xmainController', ['$scope', '$filter', function ($scope, $filter) {

    $scope.handle = '';

    // digets loop is looping through
    $scope.lowercasehandle = function () {
        return $filter('lowercase')($scope.handle);
    };

    // add variable to scope called characters
    $scope.characters = 5;

    // standard 
    //  var rulesrequest = new XMLHttpRequest();
    // rulesrequest.onreadystatechange = function () {
    //     $scope.$apply(function () {
    //         if (rulesrequest.readyState == 4 && rulesrequest.status == 200) {
    //             $scope.rules = JSON.parse(rulesrequest.responseText);
    //         }
    //     });
    // }
    // rulesrequest.open("GET", "http://localhost:54765/api", true);
    // rulesrequest.send();

    $scope.rules = [
        { rulename: "Must be 5 characters" },
        { rulename: "Must not be used elsewhere" },
        { rulename: "Must be cool" }
    ]




    // test  
    // watch the variable handle
    $scope.$watch('handle', function (newValue, oldValue) {
        //when digest cycle is happening 

        //console.info('Changed!');
        //console.log('Old:' + oldValue);
        //console.log('New:' + newValue);

        // every time typing a letter it is running a digest cycle
        // entire digest cycle completes , and updates the DOM

        // angular is taking care of all the manual stuff 

        // limitation 
    });


    // or pass in  $timeout 
    // $timeout(function() { ....    })
    // stick with angular built in stuff and not have to add the manual scope apply 


    // javascript timeout fx 
    //setTimeout(function(){

    // new thread is started and 3 seconds later 

    // $scope.$apply(function () {
    // inside  scope apply  , telling angular to be sure to running
    // normal process 
    // without this, it won't update the DOM
    //$scope.handle = "newtwitterhandler";
    //console.log("scope changed");

    //most of time angular wraps scope apply 
    // in this case it needs it manually

    // })


    //}, 3000);



}]);
