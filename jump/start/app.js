
// # option 1
//angular.module('customersApp', []);

// # option 2 
//var salesApp = angular.module('salesApp', []);


// # 3

(function () {
    // not in global scope 
    //var salesApp = angular.module('salesApp', []);
    var app = angular.module('salesApp', ['ngRoute']);

        //  salesApp.config(['$routeProvider', function($routeProvider){
        //         $routeProvider
        //         .when('/',{template:'This is the default Route'})
        //         .when('/computers',{template:'This is the computers Route'})
        //         .when('/printers',{template:'This is the printers Route'})
        //         .otherwise({redirectTo:'/'});
        //     }]);

    app.config(function($routeProvider){ //, $locationProvider) {
       
        $routeProvider
            .when('/', {
                //http://127.0.0.1:8000/#/
                controller: 'SimpleController',
                templateUrl: 'views/customers.html'
            })
            .when('/view1',{
                //http://127.0.0.1:8000/#/view1
                templateUrl: 'test.html',
                controller: 'AddOrderController'
            })
            .otherwise({ redirectTo: '/'} );

        //$locationProvider.html5Mode(true);      
    });

app.controller('AddOrderController', function($scope) {
	
    console.log('in add order');
	$scope.message = 'This is Add new order screen';
	
});
}());