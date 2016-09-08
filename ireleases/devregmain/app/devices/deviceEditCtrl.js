(function () {
    "use strict";

    angular
        .module("deviceManagement")
        .controller("DeviceEditCtrl",
        ["$scope","device",
           // "$state",
            DeviceEditCtrl]);


    function DeviceEditCtrl($scope, device) {
        
        var vm = this;

        vm.device = device;

        console.log(device);

        if (vm.device && vm.device.DeviceId) {
            vm.title = "Edit: " + vm.device.DeviceId; // + vm.device.deviceName;
        }
        else {
            vm.title = "New Device"
        }


    }



} ());