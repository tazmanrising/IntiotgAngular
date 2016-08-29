(function () {
  'use strict';

  angular.module('app').controller('DeviceController', DeviceController);

        function DeviceController($http){
            var vm = this;
            var dataService = $http;
            //dataService.get("/api/Product")
            
            vm.devices = [];

        deviceList();

        function deviceList() {

            var mainInfo = null;
            
            var obj = {content:null};

            // $http.get('api/devices/devices.json').success(function(data) {
            //     // you can do some processing here
            //     obj.content = data;
            // });    

            //$http.defaults.headers.post["Content-Type"] = "text/plain";
            
            $http.get('api/devices/devices.json')
                .then(function (result) {
                        vm.devices = result.data.Devices;      
                },
                function(error) {

                    console.log('error');
                });


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