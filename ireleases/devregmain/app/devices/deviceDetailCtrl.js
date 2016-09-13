(function () {
    "use strict";

    angular
        .module("deviceManagement")
        .controller("DeviceDetailCtrl",
        ["$scope",
            "$http",
            "$stateParams",
            "deviceService",
            //"dataFactory",
            DeviceDetailCtrl]);


    function Testing($http) {
        console.log("in Testing");
        var deviceEvents = [];

        $http.get('../api/deviceEvents.json')
            .then(function (result) {
                deviceEvents = result.data.DeviceEvents;
                console.log(deviceEvents);
            },
            function (error) {
                console.log(error);
            });

    }

    function DeviceDetailCtrl($scope, $http, device, deviceService) {//, deviceService, dataFactory) {   // pass in parameter into the function , now we need

        //console.log("device.DeviceId = " + device.DeviceId);
        var vm = this;
        //console.log(this);

        vm.device = device;

        //$scope.categories = [];

        //console.log("$scope.categories = " + $scope.categories);
        //console.log("before - categories = "  + categories);

        // http://stackoverflow.com/questions/26968959/angular-js-importing-json-data-with-http-get-works-in-controller-does-not

        // switch this to service like in link

        var j = 0;

        $http.get("api/devices.json").then(function (response) {

            $scope.statuses = [];


            for (var x = 0; x < response.data.Devices.length; x++) {
                if (response.data.Devices[x].DeviceId === device.DeviceId) {
                    //console.log('in');
                    vm.device.DKiIndex = response.data.Devices[x].DKiIndex;
                    //vm.device.Aid = response.data.Devices[x].Aid;
                    var baseFinal = base64toHEX(response.data.Devices[x].Aid);
                    var extM = base64toHEX(response.data.Devices[x].Sha);
                    // base64toHEX("oAAABTUAAg==")
                    //console.log(baseFinal);

                    vm.device.Aid = baseFinal;
                    vm.device.Sha = extM;
                    vm.device.DeviceStatus = response.data.Devices[x].DeviceStatus;

                    //vm.device.DKiIndex = response.data.Devices[x].DKiIndex;

                    angular.forEach(response.data.Devices[x], function (value, index) {
                        //$scope.statuses.push(value[x].DeviceStatus);
                        //console.log(response.data.Devices[x].DeviceStatus);
                        //console.log(value[x]);
                    });



                }

                //console.log(response.data.Devices[x].DeviceId);
                //categories.push(response.data[x]);
            }
        });

        vm.archivedManifests = [];

        // http://azs-dptsvr-003.amr.corp.intel.com:42832/api/Manifest/MeasurementsByStartingRecord/00022B9A000000010001?ManifestStatus=Archived&StartIdx=0&RecordCount=5
        $http.get('api/archivedManifests.json')
            .then(function (result) {
                vm.archivedManifests = result.data.ManifestMeasurements;
                console.log(result);
                
            },
            function (error) {
                console.log(error);
            });




        function base64toHEX(base64) {
            var raw = atob(base64);
            var HEX = '';
            for (var i = 0; i < raw.length; i++) {
                var _hex = raw.charCodeAt(i).toString(16)
                HEX += (_hex.length == 2 ? _hex : '0' + _hex);
            }
            return HEX.toUpperCase();
        }

        //console.log("$scope.categories = " + $scope.categories);
        //console.log("after - categories = "  + categories);

        vm.deviceEvents = [];



        $http.get('api/deviceEvents.json')
            .then(function (result) {
                vm.deviceEvents = result.data.DeviceEvents;
                //console.log(vm.deviceEvents);
                //console.log(vm.deviceEvents[0].Name);
                //tom.events = result.data.DeviceEvents;
                //console.log(result);
                $scope.isoDate = [];

                angular.forEach(result.data.DeviceEvents, function (value, index) {
                    $scope.isoDate.push(value.Timestamp);

                });

            },
            function (error) {
                console.log(error);
            });

        //console.log(tom.events);


        // ####  Calculate button click event  #####################
        vm.calculatePrice = function () {

            var other = 0;
            console.log(other);
            var t = 0;

            t = deviceService.calculatePriceFromMarkupAmount(1, 4);
            console.log(t);

            //var xx = 0;
            //xx = deviceService.chttpgetOutside(1, 4);
            //console.log(xx);

            // var price = 0;

            // if (vm.priceOption == 'amount') {
            //     price = productService.calculatePriceFromMarkupAmount(
            //         vm.product.cost, vm.markupAmount);
            // }

            // if (vm.priceOption == 'percent') {
            //     price = productService.calculatePriceFromMarkupPercent(
            //         vm.product.cost, vm.markupPercent);
            // }
            // vm.product.price = price;
        };

        // temp spot 


        //////////////////



        // http://localhost:42822/api/device/00022B510000000A0001


        // vm.device = {
        //     "DeviceId": 1,
        //     "deviceName": "blah",
        //     "proctCode": "adf-233",
        //     "releaseDate": "March 18, 2010",
        //     "description": "afdlka  adsjflkajf",
        //     "cost": 20.00,
        //     "price": 32.99,
        //     "category": "garden",
        //     "tags": ["adf","adfadf","adf"],-
        //     "imageUrl": "http://adfa.com"
        // };

        vm.title = "Device Detail"; //: " + vm.device.deviceName;

        // if (vm.device.tags) {
        //     vm.device.tagList = vm.device.tags.toString();
        // }

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
    .filter('decodeBaseToHex', function () {
        return function (base64) {

            // return window.atob(base64)
            //     .split('')
            //     .map(function (char) {
            //         return ('0' + char.charCodeAt(0).toString(16)).slice(-2);
            //     })
            //     .join('')
            //     .toUpperCase(); // Per your example output

            var raw = atob(base64);

            var HEX = '';

            for (i = 0; i < raw.length; i++) {

                var _hex = raw.charCodeAt(i).toString(16)

                HEX += (_hex.length == 2 ? _hex : '0' + _hex);

            }
            return HEX.toUpperCase();

        }
    });


angular
    .module("deviceManagement")
    .filter('isoConvert', function () {

        return function (str) {
            //var str2 = new Date('2016-08-26T16:02:15.747').toLocaleString('en-US');
            //var s = new Date(str).toLocaleString('en-US');
            var s = new Date(str).toLocaleString('en-US').replace(/,/, '');
            return s;
        }


    });
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