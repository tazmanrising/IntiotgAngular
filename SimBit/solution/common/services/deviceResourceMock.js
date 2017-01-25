
(function () {
    "use strict";

    var app = angular
        .module("deviceResourceMock",
        ["ngMockE2E"]);  // a


    // app.run takes function passed in as parmeter and executes it
    // define the devices  
    app.run(function ($httpBackend) {

        //var devices = '../../api/devices.json';

        //var xdevices = [];
        //$http.get('api/devices.json')
        //devices = '/test.json';
        //xdevices = '/api/devices.json';

        //var devices = [];
        var devices =
            {
                "Devices": [
                    //[
                    {
                        "DeviceId": "00022B9A000000010001",
                        "StagedManifestIdList": [],
                        "PendingManifestId": null,
                        "PendingTimeStamp": "0001-01-01T00:00:00",
                        "ManifestIdList": [
                            "00000002",
                            "00000001",
                            "00000003"
                        ],
                        "DeviceStatus": 3,
                        "Aid": "oAAABTUAAg==",
                        "DKiIndex": "DKi00000002",
                        "Sha": "R2tiZRQgY/iohXZt5O4HaQwtVe/adWU2VOcKaelJ3Us=",
                        "DefaultPayload": "C:\\ProgramData\\Intel\\DPT4T\\Payloads\\M4PayloadAuto.xml"
                    },
                    {
                        "DeviceId": "00022B9E000000060001",
                        "StagedManifestIdList": [
                            "00000004"
                        ],
                        "PendingManifestId": null,
                        "PendingTimeStamp": "0001-01-01T00:00:00",
                        "ManifestIdList": [],
                        "DeviceStatus": 1,
                        "Aid": "oAAABTUAAg==",
                        "DKiIndex": "DKi00000003",
                        "Sha": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=",
                        "DefaultPayload": null
                    }
                ]
                //];
            };

        var deviceEvents = [];
        deviceEvents = [
            {
                "adfa": "adfa"
            }
        ];

        var deviceUrl = "/api/devices";

        // when there is a get requesst  respond with a list of devices 
        //Instead of writing these out many times with slight differences 




        $httpBackend.whenGET(deviceUrl).respond(devices.Devices);
        //$httpBackend.whenGET(deviceUrl).respond(devices);

        //It does allow for regular expressions  :)  

        var editingRegex = new RegExp(deviceUrl + "/[0-9][0-9]*", '');
        //console.log(editingRegex); ///\/api\/devices\/[0-9][0-9]*/

        // respond method can take a function  , fx locates  
        // split url in an array  , code loops through 


        console.log(devices.Devices.length);

        $httpBackend.whenGET(editingRegex).respond(function (method, url, data) {
            var device = { "DeviceId": 0 };
            var parameters = url.split('/');
            var length = parameters.length;
            var id = parameters[length - 1];

            //console.log('in regex');
            //console.log(id);

            // for (var i = 0; i < devices.length; i++) {
            //     if (devices[i].DeviceId == id) {
            //         device = devices[i];
            //         break;
            //     }
            // }

            for (var i = 0; i < devices.Devices.length; i++) {  //devices.length
                if (devices.Devices[i].DeviceId == id) {
                    console.log("id=" + id);
                    device = devices.Devices[i];
                    break;
                }
            }


            // if (id > 0) {
            //     for (var i = 0; i < devices.length; i++) {
            //         if (devices[i].DeviceId == id) {
            //             device = devices[i];
            //             break;
            //         }
            //     };
            // }
            
            //$httpBackend.whenGET(deviceUrl).respond(deviceEvents);
            //console.log(deviceEvents);

            return [200, device, {}];
            
            //return [200, device, deviceEvents, {}];

        });

        $httpBackend.whenPOST(deviceUrl).respond(function (method, url, data) {
            var product = angular.fromJson(data);

            if (!product.productId) {
                // new product Id
                product.productId = products[products.length - 1].productId + 1;
                products.push(product);
            }
            else {
                // Updated product
                for (var i = 0; i < products.length; i++) {
                    if (products[i].productId == product.productId) {
                        products[i] = product;
                        break;
                    }
                };
            }
            return [200, product, {}];
        });

        // // Pass through any requests for application files
        $httpBackend.whenGET(/app/).passThrough();
        //$httpBackend.whenGET(/^\/app\//).passThrough();


    })
} ());

// angular
//     .module("deviceManagement")
//     .filter('deviceStatus', function () {
//         var deviceStatusLookup = {
//             0: "None", // Gray
//             1: "New Device",  // Blue
//             2: "Activated",  // Green
//             3: "Unactivated" // Orange
//         };

//         return function (statusId) {
//             var output = deviceStatusLookup[statusId];
//             return output;
//         }
//     });
