
// # option 1
//angular.module('customersApp', []);

// # option 2 
//var salesApp = angular.module('salesApp', []);


// # 3

(function () {
    // not in global scope 
    //var salesApp = angular.module('salesApp', []);
    var salesApp = angular.module('salesApp', ['ngRoute']);

        //  salesApp.config(['$routeProvider', function($routeProvider){
        //         $routeProvider
        //         .when('/',{template:'This is the default Route'})
        //         .when('/computers',{template:'This is the computers Route'})
        //         .when('/printers',{template:'This is the printers Route'})
        //         .otherwise({redirectTo:'/'});
        //     }]);

    salesApp.config(function($routeProvider, $locationProvider) {
       
        $routeProvider
            .when('/', {
                controller: 'SimpleController',
                templateUrl: 'views/customers.html'
            })
            .otherwise({ redirectTo: '/'} );

        $locationProvider.html5Mode(true);      
    });


}());