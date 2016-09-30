(function () {
    "use strict";

    angular
        .module("deviceManagement")
        .factory('web', function($http, rootUrl){
            return { rootUrl: rootUrl}
        })
        .constant('adfaf', 'blah')
        .directive('modal', [dirTest])
        .controller("DeviceDetailCtrl",
            ["$window", 
            "$scope",
            "$http",
            "web",
            "$stateParams",
            "deviceService",
            //"dataFactory",
            //ModalService,
            DeviceDetailCtrl]);

    function dirTest() {
        //console.log('in dirTest');

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

    function DeviceDetailCtrl($window, $scope, $http, web, device, deviceService) { //, ModalService) {//, deviceService, dataFactory) {

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

        // ============ Get DKI  ===============================================================
        var onDkiComplete = function(response) {
            //$scope.dki = response.data;
            $scope.dki = response.data.Tables;
            console.log(response.data);
            //$scope.notes=[{"id":"id1", "text":"text1"}, {"id":"id2", "text":"text2"}];
        }

          var onError = function(reason){
            $scope.error = "Could not fetch the data";
        };

        //http://localhost:42822/api/Table/TBLDKI/
        $http.get("http://azs-dptsvr-003.amr.corp.intel.com:42832/api/Table/TBLDKI/")
            .then(onDkiComplete, onError);

        // =====================================================================================

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

        var _url = 'http://azs-dptsvr-003.amr.corp.intel.com:42832/api/device';
        //$http.get("api/devices.json").then(function (response) {
        $http.get(_url).then(function (response) {

            $scope.statuses = [];
            $scope.extendeMeasure = "";
            $scope.device = "";

            for (var x = 0; x < response.data.Devices.length; x++) {
                if (response.data.Devices[x].DeviceId === device.DeviceId) {
                    //console.log('in');
                    vm.device.DKiIndex = response.data.Devices[x].DKiIndex;
                    //vm.device.Aid = response.data.Devices[x].Aid;
                    var baseFinal = base64toHEX(response.data.Devices[x].Aid);
                    $scope.shaOriginal = response.data.Devices[x].Sha;
                    var extM = base64toHEX(response.data.Devices[x].Sha);
                    $scope.extendeMeasure = extM;
                    $scope.device = device.DeviceId;
                    //console.log($scope.shaOriginal);
                    //console.log(extM);


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



        $scope.integrityMessage = "Unknown";


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

            // var data = {
            //     DeviceId: "00022B9E000000060001",
            //     "CalculatedMeasurement": [
            //         0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
            //     ]
            // };


            //console.log(data);




            //var hex = "476B6265142063F8A885766DE4EE07690C2D55EFDA75653654E70A69E949DD4B";
            //console.log(hexToBytes(hex));

            var hex = $scope.extendeMeasure;
            console.log('hex', hex);

            var data = {
                DeviceId: $scope.device, //"00022B9E000000060001",
                "CalculatedMeasurement": hexToBytes(hex)
            };

            // console.log(data);

            //var _url = 'http://localhost:42822/api/Manifest/VerifyChain/';
            var _url = 'http://azs-dptsvr-003.amr.corp.intel.com:42832/api/Manifest/VerifyChain/';

            $http.put(_url, data).then(function (response) {
                if (response.data) {
                    $scope.integrityMessage = "Success";
                    //var text = "adf";
                    //toastr.success(text,"Success");
                    //console.log('success??');
                    toastr.success("Device ID: " + $scope.vm.device.DeviceId, "Success Alert", { timeOut: 2000 });

                }
            }, function (response) {
                console.log(response.status);
                $scope.msg = "Service not Exists";
                $scope.statusval = response.status;
                $scope.statustext = response.statusText;
                console.log(response.statusText);
                console.log(response.headers());
                $scope.headers = response.headers();
                $scope.integrityMessage = "Failure";

                //console.log('fail???');
                toastr.error("Device ID: " + $scope.vm.device.DeviceId, "Failure", { timeOut: 2000 });
            });


        };

        $scope.rootUrl = web.rootUrl;
        console.log($scope.rootUrl);

        vm.archivedManifests = [];

        // this is 
        var manifestTemp = "testing";

        //var _urlManifest = "http://azs-dptsvr-003.amr.corp.intel.com:42832/api/Manifest/MeasurementsByStartingRecord/00022B9A000000010001?ManifestStatus=Archived&StartIdx=0&RecordCount=5"
        
        //var _urlManifest = "http://azs-dptsvr-003.amr.corp.intel.com:42832/api/Manifest/MeasurementsByStartingRecord/00022BBA000000210001?ManifestStatus=Archived&StartIdx=0&RecordCount=5"

        //console.log(device);

        //http://azs-dptsvr-003.amr.corp.intel.com:42832/api/Manifest/MeasurementsByStartingRecord/00022B9E000000060001?ManifestStatus=Archived&StartIdx=0&RecordCount=5

        var _urlManifest = "http://azs-dptsvr-003.amr.corp.intel.com:42832/api/Manifest/MeasurementsByStartingRecord/" + device.DeviceId + "?ManifestStatus=Archived&StartIdx=0&RecordCount=5"
        //console.log(_urlManifest);


        // $http.get('api/archivedManifests.json')
        $http.get(_urlManifest)
            .then(function (result) {
                vm.archivedManifests = result.data.ManifestMeasurements;
                console.log(result);

            },
            function (error) {
                console.log(error);
            });



        // Convert a hex string to a byte array
        function hexToBytes(hex) {
            for (var bytes = [], c = 0; c < hex.length; c += 2)
                bytes.push(parseInt(hex.substr(c, 2), 16));
            return bytes;
        }

        // Convert a byte array to a hex string
        function bytesToHex(bytes) {
            for (var hex = [], i = 0; i < bytes.length; i++) {
                hex.push((bytes[i] >>> 4).toString(16));
                hex.push((bytes[i] & 0xF).toString(16));
            }
            return hex.join("");
        }




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

        
        //http://localhost:42822/api/DeviceEvents/00022BBA000000210001?RecordCount=10&StartingRecordId=0

        var _urlEvents = "http://azs-dptsvr-003.amr.corp.intel.com:42832/api/DeviceEvents/" + device.DeviceId + "?RecordCount=10&StartingRecordId=0";
        // $http.get('api/deviceEvents.json')
        $http.get(_urlEvents)
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

        $scope.colorSetter = function (colorCode) {
            //refactor for colors 

            var color = colorCode;

            return { color: color };
        };

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