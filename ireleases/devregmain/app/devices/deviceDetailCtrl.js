(function () {
    "use strict";

    angular
        .module("deviceManagement")
        .controller("DeviceDetailCtrl",
                    ["device",
                     DeviceDetailCtrl]);

    function DeviceDetailCtrl() {  // (device) {
        var vm = this;

        //vm.device = device;

        vm.device = {
            "productId": 2,
            "productName": "blah",
            "proctCode": "adf-233",
            "releaseDate": "March 18, 2010",
            "description": "afdlka  adsjflkajf",
            "cost": 20.00,
            "price": 32.99,
            "category": "garden",
            "tags": ["adf","adfadf","adf"],
            "imageUrl": "http://adfa.com"
                        
        }

        vm.title = "Device Detail: " + vm.device.deviceName;

        if (vm.device.tags) {
            vm.device.tagList = vm.device.tags.toString();
        }
    }
}());