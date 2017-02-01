(function () {
    'use strict';

    angular
        .module('hotelApp')
        .factory('cancelService', cancelService);

    cancelService.$inject = ['$http', 'currentSession'];

    function cancelService($http, currentSession) {

        /*Object to return JSON data to controllers*/
        var cancelBooking = {};

        /*string to unit test basic connection from service to controller. This test can be found in ../hotel/hotelsSearch-controller-test.js*/
        cancelBooking.test = true;

        /*Object to hold returned hotel data from the post call*/
        cancelBooking.responseData = {};

        /*Boolean to flag if a response has been recieved or if an error has occured that couldn't be caught. This can be removed at some point.*/
        cancelBooking.gotResponse = false;

        /*Post call function to amazon services in order to search hotels given the passed hotel criteria.*/
        cancelBooking.conductCancel = function (userData) {

            //console.log('selectedRoomFactory: ' + JSON.stringify(selectedRoomFactory, null, '\t'));
            var cancelData = "/api/v1/cancelbooking?";

            cancelData = cancelData + "memberId=" + userData.memberId + "&",
            cancelData = cancelData + "bookingId=" + userData.bookingId + "&",
            cancelData = cancelData + "partnerId=" + userData.partnerId + "&",
            cancelData = cancelData + "nameId=" + userData.nameId + "&",
            cancelData = cancelData + "agentId=" + userData.agentId + "&";

            //console.log('cancel policy data : ' + JSON.stringify(cancelSearchdata, null, '\t'));
            //, { headers: { 'X-OVSAPIKEY': currentSession.current_api_key } }
            return $http.get(cancelData).
               success(function (data) {
                   /*recieve back a list of hotels that have already been searched by the passed in criteria. 
                     and set the flag to true that will change the display in the UI.  
                   */
                   cancelBooking.gotResponse = true;
                   cancelBooking.responseData = data || {};
                   //console.log('hotel cancel service response : ' + JSON.stringify(data, null, '\t'));
               }).
                error(function (data, status, headers, config) {
                    console.log('There was an error and the hotel cancel policy search was not conducted : ' + JSON.stringify(data, null, '\t'), status, headers, config);
                    cancelBooking.gotResponse = false;
                    //TODO set up error service
                    cancelBooking.errorMessage = "An error has occured in retrieving the hotel cancel policy.";
                });
        }
        return cancelBooking;
    };

})();


