(function () {
    'use strict';

    var injectParams = ['$http', '$q'];
    
    var airportCodeService = function ($http, $q) {
               
        var serviceBase = '../apps/temp/Api_Responses/',
            factory = {};
        // json file served up with http.get  don't use this  & it is calling it repeatedly  - abandon this   
        // todo  refactor for a unit test maybe
        factory.getAirlineFromCarrierId = function (code) {
            return $http.get(serviceBase + 'Airlines.json').then(function (results) {
                return findAirport(results.data, code);                
            });
        }

        function findAirport(airportList, code) {
           
            var airLen = airportList.airlines.length;
            var res = "";

            for (var i = 0; i < airLen; i++) {
                var item = airportList.airlines[i];
                if (item.carrierId == code) {
                    res = item.airline;
                    break;
                }
             
            }
            return res;
        }

        return factory;

    };


    var airlineService = function ($http, $q) {
       
        var serviceBase = '/svc/air/v1/getallairlines',
            factory = {};
        // ====  singleton persistence  ===
        var airlinePromise = $http.get(serviceBase);

        factory.getAllAirlines = function (code) {
            return airlinePromise.then(function (results){
                return findAirport(results.data, code)
            });
        }

        function findAirport(airportList, code) {

            var airLen = airportList.length;
            var res = "";

            for (var i = 0; i < airLen; i++) {
                var item = airportList[i];
                if (item.carrierId == code) {
                    res = item.airline;
                    break;
                }

            }
            return res;
        }

        return factory;
    };
        
        



    airportCodeService.$inject = injectParams;
    airlineService.$inject = injectParams;

    angular
      .module('airApp')
      .factory('airportCodeService', airportCodeService)
      .factory('airlineService', airlineService)

}());