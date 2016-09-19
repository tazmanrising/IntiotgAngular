(function () {
    "use strict";

    angular
        .module("deviceManagement")
        .controller("manifestManagement",
        ["$scope", "$http", ManifestCtrl]);


    function ManifestCtrl($scope, $http) {
        var vm = this;
        vm.manifest = [];

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