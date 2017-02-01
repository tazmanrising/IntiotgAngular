(function () {
    'use strict';

    angular
        .module('hotelApp')
        .factory('cancelGetCancelBooking', cancelGetCancelBooking);

    cancelGetCancelBooking.$inject = ['$http', 'searchFactory', 'detailFactory', 'selectedRoomFactory', 'cancelPolicyFactory', 'currentSession'];

    function cancelGetCancelBooking($http, searchFactory, detailFactory, selectedRoomFactory, cancelPolicyFactory, currentSession) {

        /*Object to return JSON data to controllers*/
        var cancelDetails = {};

        /*string to unit test basic connection from service to controller. This test can be found in ../hotel/hotelsSearch-controller-test.js*/
        cancelDetails.test = true;

        /*Object to hold returned hotel data from the post call*/
        cancelDetails.responseData = {};

        /*Boolean to flag if a response has been recieved or if an error has occured that couldn't be caught. This can be removed at some point.*/
        cancelDetails.gotResponse = false;

        /*Post call function to amazon services in order to search hotels given the passed hotel criteria.*/
        cancelDetails.getCancelDetails = function (userData) {
            //console.log('selectedRoomFactory: ' + JSON.stringify(selectedRoomFactory, null, '\t'));
            var cancelSearchdata = "/api/v1/lookupbooking?";

            cancelSearchdata = cancelSearchdata + "memberId=" + userData.memberId + "&",
            cancelSearchdata = cancelSearchdata + "bookingId=" + userData.bookingId + "&";

            //console.log('cancel policy data : ' + JSON.stringify(cancelSearchdata, null, '\t'));

            return $http.get(cancelSearchdata).
               success(function (data) {
                   /*recieve back a list of hotels that have already been searched by the passed in criteria. 
                     and set the flag to true that will change the display in the UI.  
                   */
                   cancelDetails.gotResponse = true;
                   cancelDetails.responseData = data || {};
                   cancelPolicyFactory.update(data);
                   //console.log('hotel cancel policy service response : ' + JSON.stringify(data, null, '\t'));

               }).
                error(function (data, status, headers, config) {
                    console.log('There was an error and the hotel cancel policy search was not conducted : ' + data, status, headers, config);
                    cancelDetails.gotResponse = false;
                    //TODO set up error service
                    cancelDetails.errorMessage = "An error has occured in retrieving the hotel cancel policy.";
                });
        }
        return cancelDetails;
    };

})();


