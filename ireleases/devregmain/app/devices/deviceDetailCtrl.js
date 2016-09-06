(function () {
    "use strict";

    angular
        .module("deviceManagement")
        .controller("DeviceDetailCtrl",
                    ["device",DeviceDetailCtrl]);
        // .controller("DeviceDetailCtrl",
        //             ["device",
        //              DeviceDetailCtrl]);

    function DeviceDetailCtrl(device) {   // pass in parameter into the function , now we need
        
        //console.log("test");

        var vm = this;

        vm.device = device;
        

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

        vm.title = "Device Detail: " + vm.device.deviceName;

        if (vm.device.tags) {
            vm.device.tagList = vm.device.tags.toString();
        }
    }
}());