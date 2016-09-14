(function () {
    "use strict";

    angular
        .module("deviceManagement")
        .controller("DeviceEditCtrl",
        ["$scope","$stateParams",//"device",
           // "$state",
            DeviceEditCtrl]);


    function DeviceEditCtrl($scope, device) {  //, device) {
        
        var vm = this;

        vm.device = device;

        //http://localhost:8000/#/devices/edit//info

        
        console.log(device);

        if (vm.device && vm.device.DeviceId) {
            vm.title = "Edit: " + vm.device.DeviceId; // + vm.device.deviceName;
        }
        else {
            vm.title = "New Device"
        }


    }



} ());