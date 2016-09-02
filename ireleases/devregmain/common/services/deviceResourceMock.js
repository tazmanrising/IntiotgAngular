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
        //var devices = '../api/devices.json';
        var devices =  [
            {
                "DeviceId": 1,
                "DeviceStatus": "Leaf Rake",
                "Aid": "GDN-0011",
                "Sha": "Leaf rake with 48-inch wooden handle.",
                "imageUrl": "http://openclipart.org/image/300px/svg_to_png/26215/Anonymous_Leaf_Rake.png"
            },
            {
                "DeviceId": 1,
                "DeviceStatus": "Leaf Rake",
                "Aid": "GDN-0011",
                "Sha": "Leaf rake with 48-inch wooden handle.",
                "imageUrl": "http://openclipart.org/image/300px/svg_to_png/73/rejon_Hammer.png"
            }
        ];
        
        var deviceUrl = "/api/devices";

        // when there is a get requesst  respond with a list of devices 
        $httpBackend.whenGET(deviceUrl).respond(devices);

        // var editingRegex = new RegExp(productUrl + "/[0-9][0-9]*", '');
        // $httpBackend.whenGET(editingRegex).respond(function (method, url, data) {
        //     var product = {"productId": 0};
        //     var parameters = url.split('/');
        //     var length = parameters.length;
        //     var id = parameters[length - 1];

        //     if (id > 0) {
        //         for (var i = 0; i < products.length; i++) {
        //             if (products[i].productId == id) {
        //                 product = products[i];
        //                 break;
        //             }
        //         };
        //     }
        //     return [200, product, {}];
        // });

        // $httpBackend.whenPOST(productUrl).respond(function (method, url, data) {
        //     var product = angular.fromJson(data);

        //     if (!product.productId) {
        //         // new product Id
        //         product.productId = products[products.length - 1].productId + 1;
        //         products.push(product);
        //     }
        //     else {
        //         // Updated product
        //         for (var i = 0; i < products.length; i++) {
        //             if (products[i].productId == product.productId) {
        //                 products[i] = product;
        //                 break;
        //             }
        //         };
        //     }
        //     return [200, product, {}];
        // });

        // // Pass through any requests for application files
        // $httpBackend.whenGET(/app/).passThrough();


    })
}());
