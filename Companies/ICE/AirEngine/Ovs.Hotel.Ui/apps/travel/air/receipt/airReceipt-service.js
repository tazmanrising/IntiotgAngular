(function () {
    'use strict';

    var injectParams = ['$http', 'currentSession'];

    var receiptService = function ($http, currentSession) {

        var serviceObject = {};

        serviceObject.test = true;

        serviceObject.responseData = {};

        serviceObject.gotResponse = false;

        serviceObject.resendReceiptDetails = function (userData, active, emails) {


            var receiptdata = "/api/v1/resendinvoice?";

            //I’ve stubbed out two booking-related calls in the UI, the book call itself, 
            //and the call to get booking info for the resend receipt page (and cancel page if we have one).
            
            //The book call is at svc/air/v1/book.   ===========   It’s a POST call, and the body should look something like this:

            //{
            //    "MemberId": "abc123",
            //    "NameId": "123123",
            //    "PartnerId": "127",
            //    "BookingRequest": <can leave null for now>
            //}

            //The getbooking call is at svc/air/v1/getbooking. It’s also a POST call, and the body should look something like this:

            //{
            //    "MemberId": "ABC",
            //    "AirBookingId": "123123"
            //}

            //The parameter values sent in to the calls don’t matter. 
            //They both return the same fake payload for the time being.  

            //I’m sure more will need to be added to it but it’s a starting point. We can discuss on Monday. 




            receiptdata = receiptdata + "memberId=" + userData.memberId + "&",
            receiptdata = receiptdata + "bookingId=" + userData.bookingId + "&";
            receiptdata = receiptdata + "active=" + active + "&";
            receiptdata = receiptdata + "emails=" + emails;

            return $http.get(receiptdata, { timeout: 90000, headers: { 'X-OVSAPIKEY': currentSession.current_api_key } }).
               success(function (data) {
                   serviceObject.gotResponse = true;
                   serviceObject.responseData = data || {};
               }).
                error(function (data, status, headers, config) {
                    console.log('There was an error : ' + JSON.stringify(data), status, headers, config);
                    serviceObject.gotResponse = false;
                    serviceObject.errorMessage = "An error has occured in resending the invoice.";
                });
        }

        return serviceObject;
    };

    receiptService.$inject = injectParams;

    angular.module('airApp').service('receiptService', receiptService);


}());