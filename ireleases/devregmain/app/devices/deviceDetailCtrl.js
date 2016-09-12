(function () {
    "use strict";



    angular
        .module("deviceManagement")
        //.controller("TestController",
        // ["$scope", "$http", Testing])
        // .controller("TextController",function($scope){
        //     $scope.text = { message  : "wel"}
        // })

        .controller("DeviceDetailCtrl",
        ["$scope",
            "$http",
            //"device",
            "$stateParams",
            //"$state",
            //"deviceService",
            //"dataFactory",
            DeviceDetailCtrl]);

    // .controller("DeviceDetailCtrl",
    //             ["device",
    //              DeviceDetailCtrl]);

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

    function DeviceDetailCtrl($scope, $http, device) {//, deviceService, dataFactory) {   // pass in parameter into the function , now we need



        console.log("device.DeviceId = " + device.DeviceId);

        var vm = this;

        console.log(this);

        vm.device = device;

        $scope.categories = [];

        //console.log("$scope.categories = " + $scope.categories);
        //console.log("before - categories = "  + categories);

        $http.get("api/devices.json").then(function (response) {
            for (var x = 0; x < response.data.Devices.length; x++) {
                if (response.data.Devices[x].DeviceId === device.DeviceId) {
                    console.log('in');
                    vm.device.DKiIndex = response.data.Devices[x].DKiIndex;
                    vm.device.Aid = response.data.Devices[x].Aid;
                    //vm.device.DKiIndex = response.data.Devices[x].DKiIndex;
                }
                //console.log(x);
                //console.log(response.data.Devices[x].DeviceId);
                //categories.push(response.data[x]);
            }
        });

        //console.log("$scope.categories = " + $scope.categories);
        //console.log("after - categories = "  + categories);

        // $http.get('api/devices.json')
        //     .then(function (result) {
        //         vm.device = result.data.Devices;

        //     },
        //     function (error) {
        //         console.log(error);
        //     });



        vm.calculatePrice = function () {

            var other = 0;
            console.log(other);
            var t = 0;

            t = deviceService.calculatePriceFromMarkupAmount(1, 4);
            console.log(t);

            var xx = 0;
            xx = deviceService.chttpgetOutside(1, 4);
            console.log(xx);

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