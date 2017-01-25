(function () {
    "use strict";


    angular
        .module("common.services")
        .factory("dataFactory",
        ["$http",dataFactory]);

    function dataFactory($http) {
        
        function dfaf() {
            
                $http.get('../api/deviceEvents.json')
                .then(function (result) {
                    deviceEvents = result.data.DeviceEvents;
                    console.log(deviceEvents);
                },
                function (error) {
                    console.log(error);
                });
            
            //return 1;
        }

        return {
            adfa: dfaf
        }
    }


    // angular.module('common.factories')
    //     .factory('dataFactory', ['$http', function($http) {

    //     var urlBase = '/api/customers';
    //     var dataFactory = {};

    //     dataFactory.getCustomers = function () {
    //         return $http.get(urlBase);
    //     };

    //     dataFactory.getCustomer = function (id) {
    //         return $http.get(urlBase + '/' + id);
    //     };

    //     dataFactory.insertCustomer = function (cust) {
    //         return $http.post(urlBase, cust);
    //     };

    //     dataFactory.updateCustomer = function (cust) {
    //         return $http.put(urlBase + '/' + cust.ID, cust)
    //     };

    //     dataFactory.deleteCustomer = function (id) {
    //         return $http.delete(urlBase + '/' + id);
    //     };

    //     dataFactory.getOrders = function (id) {
    //         return $http.get(urlBase + '/' + id + '/orders');
    //     };

    //     return dataFactory;
    // }]);


} ());
