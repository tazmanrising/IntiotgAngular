(function () {
    'use strict';

    angular
        .module('appTravel')
        .factory('templateFactory', templateFactory);

    templateFactory.$inject = ['$http'];

    function templateFactory($http) {
        var service = {
            getData: getData
        };

        return service;

        function getData() { }
    }
})();