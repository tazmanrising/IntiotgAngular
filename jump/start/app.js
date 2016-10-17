
// # option 1
//angular.module('customersApp', []);

// # option 2 
//var salesApp = angular.module('salesApp', []);


// # 3

(function () {
    // not in global scope 
    //var salesApp = angular.module('salesApp', []);
    var salesApp = angular.module('salesApp', ['ngRoute']);

    salesApp.config(function($routeProvider){
        $routeProvider
            .when('/', {
                controller: 'SimpleController',
                templateUrl: '../views/customers.html'
            });
    })


}());