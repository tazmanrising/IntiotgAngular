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

    console.log('controller outside  simplecontroller fx');

    var SimpleController = function ($scope) {

        console.log('controller inside fx');

        $scope.customers = [
            { name: 'Dave', city: 'Phoenix' },
            { name: 'Tom', city: 'Seattle' }
        ];

        $scope.add = function () {
            var f = document.getElementById('file').files[0],
                r = new FileReader();
            r.onloadend = function (e) {
                var data = e.target.result;
                console.log('send data');
                //http://stackoverflow.com/questions/18571001/file-upload-using-angularjs
                
                //send your binary data via $http or $resource or do anything else with it
            }
            r.readAsBinaryString(f);
        }


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