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
        ["$scope", "$http", "device", DeviceDetailCtrl]);
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

    function DeviceDetailCtrl($scope, $http, device, deviceEvents) {   // pass in parameter into the function , now we need

        //Testing($http);

        console.log(deviceEvents);

        var vm = this;

        vm.device = device;



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