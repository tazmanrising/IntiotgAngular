// #3    IFFE    self invoked   anonynomous function 
(function () {

    //console.log('controller outside fx');
    var OrdersController = function ($scope, $routeParams) {
        var customerId = $routeParams.customerId;

        // create an orders property 
        $scope.orders = null;

        // init 

        function init() {
            // Search the customers for the customerId
            for(var i=0)
        }


        //console.log('controller inside fx');

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
OrdersController.$inject = ['$scope', '$routeParams'];

    angular.module('salesApp')
        .controller('OrdersController', OrdersController);


} ());