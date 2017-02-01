(function () {
    'use strict';

    angular
        .module('hotelApp')
        .factory('receiptService', receiptService);

    receiptService.$inject = ['$http', 'searchFactory', 'cancelPolicyFactory', 'currentSession'];

    function receiptService($http, searchFactory, cancelPolicyFactory, currentSession) {

        /*Object to return JSON data to controllers*/
        var receiptDetails = {};

        /*string to unit test basic connection from service to controller. This test can be found in ../hotel/hotelsSearch-controller-test.js*/
        receiptDetails.test = true;

        /*Object to hold returned hotel data from the post call*/
        receiptDetails.responseData = {};

        /*Boolean to flag if a response has been recieved or if an error has occured that couldn't be caught. This can be removed at some point.*/
        receiptDetails.gotResponse = false;

        /*Post call function to amazon services in order to search hotels given the passed hotel criteria.*/
        receiptDetails.resendReceiptDetails = function (userData, active) {

            //console.log('selectedRoomFactory: ' + JSON.stringify(selectedRoomFactory, null, '\t'));
            var receiptdata = "/api/v1/resendinvoice?";

            receiptdata = receiptdata + "memberId=" + userData.memberId + "&",
            receiptdata = receiptdata + "bookingId=" + userData.bookingId + "&";
			receiptdata = receiptdata + "active=" + active;

            //{ headers: { 'X-OVSAPIKEY': currentSession.current_api_key } }
            return $http.get(receiptdata).
               success(function (data) {
                   /*recieve back a list of hotels that have already been searched by the passed in criteria. 
                     and set the flag to true that will change the display in the UI.  
                   */
                   receiptDetails.gotResponse = true;
                   receiptDetails.responseData = data || {};

                   //console.log('hotel receipt policy service response : ' + JSON.stringify(data, null, '\t'));

               }).
                error(function (data, status, headers, config) {
                    console.log('There was an error and the hotel cancel policy search was not conducted : ' + JSON.stringify(data), status, headers, config);
                    receiptDetails.gotResponse = false;
                    //TODO set up error service
                    receiptDetails.errorMessage = "An error has occured in retrieving the hotel cancel policy.";
                });
        }
        return receiptDetails;
    };

})();


