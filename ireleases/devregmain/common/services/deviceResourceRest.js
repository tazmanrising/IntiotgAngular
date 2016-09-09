(function () {
    "use strict";

    var app2 = angular
        .module("deviceResourceRest",
        ["ngMockE2E"]);
        //["ngResource",getResources]);


        //console.log('what');

        app2.run(function ($httpBackend) { //($resource){
            
            console.log('in');

        })

        //console.log('after');

    function getResources($resource) {

       console.log('test');


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



        // return $resource(devices), {}, {
        //     get: { method: 'GET', isArray: true }
        // };


    }

} ());