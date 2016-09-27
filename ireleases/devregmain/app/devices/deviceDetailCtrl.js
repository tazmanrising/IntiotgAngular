(function () {
    "use strict";



    //these are the same 
    //angular.module('app2', ['angularModalService']);
    // same thing 
    //var application2 = angular.module('app2', ['angularModalService']);

    //angular.module('app2').config(...)
    //application2.config(...)


    // var application2 = angular.module('app2', ['angularModalService']);

    // angular.module('app2').controller('SomeController', ['ModalService', function(ModalService) {

    //   console.log('in app2');
    // }]);


    angular
        .module("deviceManagement")
        .directive('modal', [dirTest])
        .controller("DeviceDetailCtrl",

        ["$window", "$scope",
            "$http",
            "$stateParams",
            "deviceService",
            //"dataFactory",
            //ModalService,
            DeviceDetailCtrl]);

    function dirTest() {
        console.log('in dirTest');

        return {
            template: '<div class="modal fade">' +
            '<div class="modal-dialog">' +
            '<div class="modal-content">' +
            '<div class="modal-header">' +
            '<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>' +
            '<h4 class="modal-title">{{ title }}</h4>' +
            '</div>' +
            '<div class="modal-body" ng-transclude></div>' +
            '</div>' +
            '</div>' +
            '</div>',
            restrict: 'E',
            transclude: true,
            replace: true,
            scope: true,
            link: function postLink(scope, element, attrs) {
                scope.title = attrs.title;

                scope.$watch(attrs.visible, function (value) {
                    if (value == true)
                        $(element).modal('show');
                    else
                        $(element).modal('hide');
                });

                $(element).on('shown.bs.modal', function () {
                    scope.$apply(function () {
                        scope.$parent[attrs.visible] = true;
                    });
                });

                $(element).on('hidden.bs.modal', function () {
                    scope.$apply(function () {
                        scope.$parent[attrs.visible] = false;
                    });
                });
            }
        };

    }


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

    function DeviceDetailCtrl($window, $scope, $http, device, deviceService, ModalService) {//, deviceService, dataFactory) {   // pass in parameter into the function , now we need

        var vm = this;
        vm.device = device;

        //Archived link modal popup (left of red arrow)
        $scope.showModal = false;
        $scope.toggleModal = function () {
            $scope.showModal = !$scope.showModal;
        };


        // RED Arrow Download 
        $scope.loadXML = function () {
            //$window.location.href = "http://www.google.com";
            //$window.open('https://www.google.com', '_blank');
            $window.open('http://localhost:8000/api/manifest.xml', '_blank');

        };

        $scope.checkIntegrity = function () {

            //console.log($scope.vm.device.DeviceId);
            //console.log($scope.vm.device.Sha);
            //var _url = 'http://azs-dptsvr-003.amr.corp.intel.com:42832/api/device';
            // var data = {
            //     DeviceId: '00022B9E000000060001',
            //     CalculatedMeasurement: '0000000000000000000000000000000000000000000000000000000000000000'
            //     //DeviceId: $scope.vm.device.DeviceId,
            //     //CalculatedMeasurement:  $scope.shaOriginal //$scope.vm.device.Sha

            // };

            //var data = '../api/integrity.json';

            var data = {
                DeviceId: "00022B9E000000060001",
                "CalculatedMeasurement": [
                    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                ]
            };

            var _url = 'http://localhost:42822/api/Manifest/VerifyChain/';
            //$http.put(_url, JSON.stringify(data)).then(function (response) {
            $http.put(_url, data).then(function (response) {
                if (response.data) {
                    console.log('adf');
                }
            }, function (response) {
                console.log(response.status);
                $scope.msg = "Service not Exists";
                $scope.statusval = response.status;
                $scope.statustext = response.statusText;
                console.log(response.statusText);
                console.log(response.headers());
                $scope.headers = response.headers();
            });


        };


        $('#button').click(function () {
            $("input[type='file']").trigger('click');
        })

        $("input[type='file']").change(function () {
            $('#val').text(this.value.replace(/C:\\fakepath\\/i, ''))
        })
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
                    $scope.shaOriginal = response.data.Devices[x].Sha;
                    var extM = base64toHEX(response.data.Devices[x].Sha);


                    console.log($scope.shaOriginal);
                    console.log(extM);


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

        // this is 
        var manifestTemp = "testing";

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

        // $scope.show = function () {
        //     console.log('yes');

        //     ModalService.showModal({
        //         templateUrl: 'modal.html',
        //         controller: "ModalController"
        //     }).then(function (modal) {
        //         modal.element.modal();
        //         modal.close.then(function (result) {
        //             $scope.message = "You said " + result;
        //         });
        //     });

        // };


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


// angular.directive('modal', function () {
//     return {
//         template: '<div class="modal fade">' +
//         '<div class="modal-dialog">' +
//         '<div class="modal-content">' +
//         '<div class="modal-header">' +
//         '<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>' +
//         '<h4 class="modal-title">{{ title }}</h4>' +
//         '</div>' +
//         '<div class="modal-body" ng-transclude></div>' +
//         '</div>' +
//         '</div>' +
//         '</div>',
//         controller: 'DeviceDetailCtrl',
//         restrict: 'E',
//         transclude: true,
//         replace: true,
//         scope: true,
//         link: function postLink(scope, element, attrs) {
//             scope.title = attrs.title;

//             scope.$watch(attrs.visible, function (value) {
//                 if (value == true)
//                     $(element).modal('show');
//                 else
//                     $(element).modal('hide');
//             });

//             $(element).on('shown.bs.modal', function () {
//                 scope.$apply(function () {
//                     scope.$parent[attrs.visible] = true;
//                 });
//             });

//             $(element).on('hidden.bs.modal', function () {
//                 scope.$apply(function () {
//                     scope.$parent[attrs.visible] = false;
//                 });
//             });
//         }
//     };
// });