/**
 * Created by Deb on 8/21/2014.
 */
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
            //{ "Devices": [
            [
                {
                    "DeviceId": "00022B9A000000010001",
                    "deviceName": "adf",
                    "DeviceStatus": 3,
                    "Aid": "GDN-0011",
                    "Sha": "Leaf rake with 48-inch wooden handle.",
                    "imageUrl": "http:/"
                },
                {
                    "DeviceId": "00022B9E000000020001",
                    "deviceName": "sdfeadf",
                    "DeviceStatus": 1,
                    "Aid": "GDN-0011",
                    "Sha": "Leaf rake with 48-inch wooden handle.",
                    "imageUrl": "http://o"
                }
                //]
            ];
        //};

        var deviceUrl = "/api/devices";

        // when there is a get requesst  respond with a list of devices 
        //Instead of writing these out many times with slight differences 

        //$httpBackend.whenGET(deviceUrl).respond(devices.Devices);
        $httpBackend.whenGET(deviceUrl).respond(devices);

        //It does allow for regular expressions  :)  

        var editingRegex = new RegExp(deviceUrl + "/[0-9][0-9]*", '');
        // respond method can take a function  , fx locates  
        // split url in an array  , code loops through 

        $httpBackend.whenGET(editingRegex).respond(function (method, url, data) {
            var device = { "DeviceId": 0 };
            var parameters = url.split('/');
            var length = parameters.length;
            var id = parameters[length - 1];

            console.log('in regex');

            if (id > 0) {
                for (var i = 0; i < devices.length; i++) {
                    if (devices[i].DeviceId == id) {
                        device = devices[i];
                        break;
                    }
                };
            }
            return [200, device, {}];
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
