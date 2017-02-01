(function () {
     'use strict';


    var injectParams = ['$http', 'currentSession'];

    var lookupBookingService =  function($http, currentSession) {

        var serviceObject = {};

        serviceObject.test = true;

        serviceObject.responseData = {};

        serviceObject.gotResponse = false;

        serviceObject.getBookingDetails = function (userData) {

            //var searchdata = "/api/v1/lookupbooking?";
            var searchdata = "/svc/air/v1/getbooking?";

            //http://localhost:9805/Air/#/receipt/ECT36965EPZ/adf

            var request = {
                MemberId: "ECT36965EPZ", AirBookingId: "RS3Q2EYP"
            };

            // currentSession.identity.ice_member_id;


            //searchdata = searchdata + "memberId=" + userData.memberId + "&",
            //searchdata = searchdata + "bookingId=" + userData.bookingId + "&";

            //ECT36965EPZ:RS3Q2EYP

            return $http.post(searchdata, request, { timeout: 90000, headers: { 'X-OVSAPIKEY': currentSession.current_api_key } }).
              success(function (data) {
                  serviceObject.gotResponse = true;
                  serviceObject.responseData = data || {};
                  console.log(data);
              }).
               error(function (data, status, headers, config) {
                   console.log('There was an error and the hotel cancel policy search was not conducted : ' + data, status, headers, config);
                   serviceObject.gotResponse = false;
                   serviceObject.errorMessage = "An error has occured in retrieving the hotel cancel policy.";
               });
                     
        }
        

        console.log(serviceObject);
        return serviceObject;



    };




    lookupBookingService.$inject = injectParams;

    angular.module('airApp').service('lookupBookingService', lookupBookingService);

}());