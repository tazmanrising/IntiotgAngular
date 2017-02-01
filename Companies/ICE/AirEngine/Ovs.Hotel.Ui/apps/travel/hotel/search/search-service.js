(function() {
    "use strict";

    angular
        .module("hotelApp")
        .factory("SearchService", SearchService);

    SearchService.$inject = ["$http", "$log", "LogglyLogger", "currentSession"];

    function SearchService($http, $log, LogglyLogger, currentSession) {

        /*Object to return JSON data to controllers*/
        var returnedHotels = {};

        /*string to unit test basic connection from service to controller. This test can be found in ../hotel/hotelsSearch-controller-test.js*/
        returnedHotels.test = true;

        /*Object to hold returned hotel data from the post call*/
        returnedHotels.responseData = {};

        /*Boolean to flag if a response has been recieved or if an error has occured that couldn't be caught. This can be removed at some point.*/
        returnedHotels.gotResponse = false;

        function generateGuid() {
            var guid = "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g, function(c) {
                var r = Math.random() * 16 | 0, v = c == "x" ? r : (r & 0x3 | 0x8);
                return v.toString(16);
            });
            return guid;
        };

        /*Post call function to amazon services in order to search hotels given the passed hotel criteria.*/
        returnedHotels.getHotels = function (destination, lat, lng, radius, checkin, checkout, numRooms, numAdults, childages, userid, locale, currencycode, countrycode, agentid, agentname) {
            var searchdata = "/api/v1/hotelavailability?";
            var searchGuid = generateGuid();

            if (typeof childages != 'string') {
                childages = childages.toString();
            };
            if (!childages) {
                childages = 'none';
            };
            
            searchdata = searchdata + "destinationname=" + destination + "&",
                searchdata = searchdata + "latitudevalue=" + lat + "&",
                searchdata = searchdata + "longitudevalue=" + lng + "&",
                searchdata = searchdata + "radiusinmilestosearch=" + radius + "&",
                searchdata = searchdata + "checkindatevalue=" + checkin + "&",
                searchdata = searchdata + "checkoutdatevalue=" + checkout + "&",
                searchdata = searchdata + "numberofrooms=" + numRooms + "&",
                searchdata = searchdata + "numberofadults=" + numAdults + "&",
                searchdata = searchdata + "childages=" + childages + "&",
                searchdata = searchdata + "userid=" + userid + "&",
                searchdata = searchdata + "locale=" + locale + "&",
                searchdata = searchdata + "currencycode=" + currencycode + "&",
                searchdata = searchdata + "countrycode=" + countrycode + "&",
                searchdata = searchdata + "requestid=" + searchGuid + "&",
                searchdata = searchdata + "agentid=" + agentid + "&",
                searchdata = searchdata + "agentname=" + agentname;

            return $http.get(searchdata, { timeout: 90000, headers: { 'X-OVSAPIKEY': currentSession.current_api_key } }).
                success(function(data) {
                    /*recieve back a list of hotels that have already been searched by the passed in criteria. 
                      and set the flag to true that will change the display in the UI.  
                    */
                    //TODO consider a map function here in order to return data in a cleaner way to controller
                    returnedHotels.gotResponse = true;
                    returnedHotels.responseData = data;
                    //console.log('data from hotel search service' + JSON.stringify(data, null, '\t'));

                }).
                error(function(data, status, headers, config) {
                    if (status === -1) {
                        LogglyLogger.fields({ url: searchdata, referenceid: searchGuid, httpStatusCode: status });
                        $log.error("Search Timeout - 90 seconds exceeded");
                    } else {
                        LogglyLogger.fields({ url: searchdata, referenceid: searchGuid, httpStatusCode: status });
                        $log.error("Error During Search");
                    }
                    returnedHotels.gotResponse = false;

                    returnedHotels.errorMessage = status;
                });

        };
        return returnedHotels;
    };

})();

