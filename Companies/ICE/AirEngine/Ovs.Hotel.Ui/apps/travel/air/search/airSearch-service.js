(function () {
    "use strict";

    angular
        .module("airApp")
        .factory("airSearchService", airSearchService);

    airSearchService.$inject = ["$http", "$log", "currentSession"];

    function airSearchService($http, $log, currentSession) {

        /*Object to return JSON data to controllers*/
        var returnedFlights = {};

        /*string to unit test basic connection from service to controller. This test can be found in ../hotel/hotelsSearch-controller-test.js*/
        returnedFlights.test = true;

        /*Object to hold returned hotel data from the post call*/
        returnedFlights.responseData = {};

        /*Boolean to flag if a response has been recieved or if an error has occured that couldn't be caught. This can be removed at some point.*/
        returnedFlights.gotResponse = false;

        function generateGuid() {
            var guid = "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g, function (c) {
                var r = Math.random() * 16 | 0, v = c == "x" ? r : (r & 0x3 | 0x8);
                return v.toString(16);
            });
            return guid;
        };

        /*Post call function to amazon services in order to search hotels given the passed hotel criteria.*/
        returnedFlights.getFlights = function (flightInfo) {
            var flightData = "/svc/air/v1/flightsearch?";

            flightData = flightData + "originname=" + flightInfo.origin + "&";
            flightData = flightData + "destinationname=" + flightInfo.destination + "&";
            flightData = flightData + "departuredate=" + flightInfo.departureDate.format("YYYYMMDD") + "&";
            if (flightInfo.searchType === 'RoundTrip') {
                flightData = flightData + "returnDate=" + flightInfo.returnDate.format("YYYYMMDD") + "&";
            }
            flightData = flightData + "numAdult=" + flightInfo.paxTypes.Adult + "&";
            flightData = flightData + "numChild=" + flightInfo.paxTypes.Child + "&";
            flightData = flightData + "numInfant=" + flightInfo.paxTypes.Infant + "&";
            flightData = flightData + "run=true&";
            flightData = flightData + "correlationId=" + generateGuid();
            //console.log(currentSession.current_api_key);
            return $http.get(flightData, { timeout: 180000, headers: { 'X-OVSAPIKEY': currentSession.current_api_key } }).
                success(function (data) {
                    /*recieve back a list of hotels that have already been searched by the passed in criteria. 
                      and set the flag to true that will change the display in the UI.  
                    */
                    //TODO consider a map function here in order to return data in a cleaner way to controller
                    returnedFlights.gotResponse = true;
                    returnedFlights.responseData = data;
                    //console.log('data from air search service' + JSON.stringify(data, null, '\t'));

                }).
                error(function (data, status, headers, config) {
                    if (status === -1) {
                        //LogglyLogger.fields({ url: flightData, referenceid: searchGuid, httpStatusCode: status });
                        $log.error("Search Timeout - 180 seconds exceeded");
                    } else {
                        //LogglyLogger.fields({ url: flightData, referenceid: searchGuid, httpStatusCode: status });
                        $log.error("Error During Search");
                    }
                    returnedFlights.gotResponse = false;

                    returnedFlights.errorMessage = status;
                });

        };


        return returnedFlights;
    };

})();

