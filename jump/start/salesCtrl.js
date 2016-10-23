// 3 ways to setup a controller in version 1.3 and above with modules

// #1 
// salesApp.controller('SimpleController', function ($scope) {
//     $scope.customers = [
//         { name : 'Dave', city: 'Phoenix'},
//         { name : 'Tom', city: 'Seattle'}
//     ];    
// });

//#2
// angular.module('salesApp').controller('SimpleController', 
// function ($scope) {
//     $scope.customers = [
//         { name : 'Dave', city: 'Phoenix'},
//         { name : 'Tom', city: 'Seattle'}
//     ];    
// });

// #3    IFFE    self invoked   anonynomous function 
(function () {

    console.log('controller outside fx');
    var SimpleController = function ($scope) {
       
       console.log('controller inside fx');

        $scope.customers = [
            { name: 'Dave', city: 'Phoenix' },
            { name: 'Tom', city: 'Seattle' }
        ];

        
    };

    // angular.module('salesApp')
    //     .controller('SimpleController', ['$scope', function ($scope) {
    //         $scope.customers = [
    //             { name: 'Dave', city: 'Phoenix' },
    //             { name: 'Tom', city: 'Seattle' }
    //         ];
    //     }]);

    SimpleController.$inject = ['$scope'];

        angular.module('salesApp')
       .controller('SimpleController', SimpleController);


} ());