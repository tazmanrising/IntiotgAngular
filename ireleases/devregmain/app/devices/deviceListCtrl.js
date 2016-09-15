(function () {
    "use strict";
    angular
        .module("deviceManagement")
        .controller("DeviceListCtrl",
        ["$scope", "$http", DeviceListCtrl]);
    

    function DeviceListCtrl($scope, $http) { 
        var vm = this;

        var onListComplete = function (response) {
            
            vm.devices = response.data.Devices;
            $scope.statuses = [];
            
            angular.forEach(response.data.Devices, function (value, index) {
                $scope.statuses.push(value.DeviceStatus);
            });

            $scope.sort = function (keyname) {
                $scope.sortKey = keyname; // set the sortKey to the param passed
                $scope.reverse = !$scope.reverse; // if true make it false and vice versa

            }

        };

        var onError = function (reason) {
            $scope.error = "Could not fetch the data";
        };

        //var _url = 'http://azs-dptsvr-003.amr.corp.intel.com:42832/api/device'
        $http.get('api/devices.json')
            .then(onListComplete, onError);


        vm.showImage = false;

        vm.toggleImage = function () {
            vm.showImage = !vm.showImage;
        }




        $scope.set_color = function (device) {

            var fontColor = "";
            switch (device.DeviceStatus) {
                case 0:
                    fontColor = "gray";
                    break;
                case 1:
                    fontColor = "blue";
                    break;
                case 2:
                    fontColor = "green";
                    break;
                case 3:
                    fontColor = "orange";
                    break;

            }

            return { color: fontColor };

            // if (device.DeviceStatus > 1) {
            //     return { color: "red" }
            // }
        }


    }



} ());




angular
    .module("deviceManagement")
    .filter('deviceStatus', function () {
        var deviceStatusLookup = {
            0: "None", // Gray
            1: "New Device",  // Blue
            2: "Activated",  // Green
            3: "Unactivated" // Orange
        };

        return function (statusId) {
            var output = deviceStatusLookup[statusId];
            return output;
        }
    });

