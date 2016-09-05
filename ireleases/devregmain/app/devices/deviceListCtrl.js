(function () {
    "use strict";
    angular
        .module("deviceManagement")
        .controller("DeviceListCtrl",
           ["$scope","$http", "deviceResource", DeviceListCtrl]);    // changed to an array    //ProductListCtrl);
       

    function DeviceListCtrl($scope, $http, deviceResource) {
        var vm = this;

        //vm.devices = [];

        //deviceList();

        //controller will call query method
        deviceResource.query(function(data) {   // get request sent and get json 
           vm.devices = data; 
        });





        function deviceList() {

            //var _url = 'http://azs-dptsvr-003.amr.corp.intel.com:42832/api/device'
            
            //$http 
            //$httpBackend

           /////////////////////////////////////////////////////////////////////

            //$resource
 
            // Angular factory which creates a resource object    REST 
            //
            // function productResource($resource) {
            //     return $resource("/api/products/:productId")
            //}



            //deviceResource.query


            $http.get('api/devices.json')
                .then(function (result) {
                    $scope.users = result; // ajax request to fetch data into $scope.data
                    vm.devices = result.data.Devices;

                    $scope.statuses = [];


                    angular.forEach(result.data.Devices, function (value, index) {
                        $scope.statuses.push(value.DeviceStatus);
                    });


                },
                function (error) {

                    console.log('error');
                });

            $scope.sort = function (keyname) {
                $scope.sortKey = keyname; // set the sortKey to the param passed
                $scope.reverse = !$scope.reverse; // if true make it false and vice versa

            }
        }


        vm.devicesggg = [
            {
                "DeviceId": 1,
                "DeviceStatus": "Leaf Rake",
                "Aid": "GDN-0011",
                "Sha": "Leaf rake with 48-inch wooden handle.",
                "imageUrl": "http://openclipart.org/image/300px/svg_to_png/26215/Anonymous_Leaf_Rake.png"
            },
            {
                "DeviceId": 1,
                "DeviceStatus": "Leaf Rake",
                "Aid": "GDN-0011",
                "Sha": "Leaf rake with 48-inch wooden handle.",
                "imageUrl": "http://openclipart.org/image/300px/svg_to_png/73/rejon_Hammer.png"
            }
        ];

        vm.showImage = false;

        vm.toggleImage = function () {
            vm.showImage = !vm.showImage;
        }
    }



} ());


// app.filter  ?
// deviceManagement.filter('deviceStatus', function () {

//     var deviceStatusLookup = {
//         1: "New Device",
//         2: "Activated",
//         3: "Unactivated"
//     };

//     return function (statusId) {
//         var output = deviceStatusLookup[statusId];
//         return output;
//     }
// });