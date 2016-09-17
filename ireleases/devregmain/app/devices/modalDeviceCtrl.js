(function () {
    "use strict";

    angular
        .module("deviceManagement")
        .controller("ModalDeviceCtrl",
        ["$scope",
            "$http",
            ModalDeviceCtrl]);

 function ModalDeviceCtrl(){

     console.log('in modal ctrl fx');
 }

 } ());