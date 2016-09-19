(function () {
    "use strict";

    angular
        .module("deviceManagement")
        .controller("ManifestCtrl",
        ["$scope", 
         "$http", 
         "$stateParams",
          ManifestCtrl]);


    function ManifestCtrl($scope, $http, manifest) {
        var vm = this;
        vm.manifest = manifest;

        //http://localhost:8000/#/devices/manifest/4234234234

        $http.get("http://localhost:8000/api/manifest.xml",
            {
                transformResponse: function (cnv) {
                    var x2js = new X2JS();
                    var aftCnv = x2js.xml_str2json(cnv);
                    return aftCnv;
                }
            }).success(function (response) {
                console.log(response);
            });

    }

} ());