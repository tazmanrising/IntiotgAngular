(function () {
    'use strict';
 

    angular.module('app')
         .filter('deviceStatus', function () {
                        return function (status_id) {
                            var statuses = ['Old Device', 'New Device', 'Activated', 'Unactivated'];
                            return statuses[status_id];
                        };
                    })
        .controller('DeviceController', DeviceController)



    function DeviceController($http, $scope) {
        var vm = this;
        var dataService = $http;
       
        vm.devices = [];

        deviceList();





        function deviceList() {
         

            $http.get('api/devices/devices.json')
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
            //$http.get('api/devices/devices.json').success(function(data) {
            //    $scope.countries = data;
            //});




            //return obj;    

            // $http.get('api/devices/devices.json').success(function(data) {
            //  mainInfo = data;
            // });


            // dataService.get("http://localhost:42822/api/device")
            // .then(function (result) {
            //     //vm.devices = result.data;
            //     vm.devices = result.data.Devices;

            //     //debugger;
            //     console.log(vm.devices);
            // },
            // function (error) {
            //     handleException(error);
            // });
        }


        function handleException(error) {
            alert(error.data.ExceptionMessage);
        }

    }



})(); 


 //add custom filter for display
  app.filter('deviceStatusTest', function() {

    var deviceStatusLookup = {
      1: "New Device",
      2: "Activated",
      3: "Unactivated"
    };
    
    return function(statusId) {
      var output = deviceStatusLookup[statusId];
      return output;
    }
  });