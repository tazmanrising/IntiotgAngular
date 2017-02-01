(function() {
    "use strict";

    angular
        .module("hotelApp")
        .factory("hotelDetailService", hotelDetailService);

    hotelDetailService.$inject = ["$http",  "SessionService", "currentSession", "searchFactory", "detailFactory", "$log", "LogglyLogger"];

    function hotelDetailService($http, SessionService, currentSession, searchFactory, detailFactory, $log, LogglyLogger) {

        /*Object to return JSON data to controllers*/
        var returnedDetails = {};

        /*string to unit test basic connection from service to controller. This test can be found in ../hotel/hotelsSearch-controller-test.js*/
        returnedDetails.test = true;

        /*Object to hold returned hotel data from the post call*/
        returnedDetails.responseData = {};

        /*Boolean to flag if a response has been recieved or if an error has occured that couldn't be caught. This can be removed at some point.*/
        returnedDetails.gotResponse = false;

        function generateGuid() {
            var guid = "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g, function(c) {
                var r = Math.random() * 16 | 0, v = c == "x" ? r : (r & 0x3 | 0x8);
                return v.toString(16);
            });
            return guid;
                };

        /*Post call function to amazon services in order to search hotels given the passed hotel criteria.*/
        returnedDetails.getDetails = function (masterid) {
            //ensure dates are in correct format. 
            searchFactory.search.checkin = new Date(new Date(searchFactory.search.checkin)).toJSON();
            searchFactory.search.checkout = new Date(new Date(searchFactory.search.checkout)).toJSON();
            var searchGuid = generateGuid();
            var detailSearchData = "/api/v1/roomavailability?";
            detailSearchData = detailSearchData + "masterId=" + masterid + "&",
                detailSearchData = detailSearchData + "checkinDateValue=" + searchFactory.search.checkin + "&",
                detailSearchData = detailSearchData + "checkoutDateValue=" + searchFactory.search.checkout + "&",
                detailSearchData = detailSearchData + "numberofrooms=" + searchFactory.search.numRooms + "&",
                detailSearchData = detailSearchData + "numberofadults=" + searchFactory.search.numAdults + "&",
                detailSearchData = detailSearchData + "childages=" + searchFactory.search.childages + "&",
                detailSearchData = detailSearchData + "userid=" + SessionService.user.currentSession.identity.ice_name_id + "&",
                detailSearchData = detailSearchData + "locale=" + SessionService.user.currentSession.display_options.Locale + "&",
                detailSearchData = detailSearchData + "currencycode=" + SessionService.user.currentSession.display_options.currency_code + "&",
                detailSearchData = detailSearchData + "countrycode=" + SessionService.user.currentSession.display_options.country_code + "&",
                detailSearchData = detailSearchData + "includePropertyInfo=true" + "&",
                detailSearchData = detailSearchData + "requestid=" + searchGuid + "&",
                detailSearchData = detailSearchData + "agentid=" + SessionService.user.currentSession.identity.ice_agent_id + "&",
                detailSearchData = detailSearchData + "agentname=" + SessionService.user.currentSession.identity.ice_agent_name;

            return $http.get(detailSearchData, { timeout: 60000, headers: { 'X-OVSAPIKEY': currentSession.current_api_key } }).
                success(function(data) {
                    /*recieve back a list of hotels that have already been searched by the passed in criteria. 
                      and set the flag to true that will change the display in the UI.  
                    */
                    returnedDetails.gotResponse = true;
                    returnedDetails.responseData = data || {};
                    detailFactory.update(data);
                }).
                error(function(data, status, headers, config) {
                    if (status === -1) {
                        LogglyLogger.fields({ url: detailSearchData, referenceid: searchGuid, httpStatusCode: status });
                        $log.error("Availability Timeout: 60 seconds exceeded");
                    } else {
                        LogglyLogger.fields({ url: detailSearchData, referenceid: searchGuid, httpStatusCode: status });
                        $log.error("Error During Availability Call");
                    };

                    returnedDetails.gotResponse = false;
                    returnedDetails.errorMessage = status;

                });
        };
        return returnedDetails;
    };

})();


