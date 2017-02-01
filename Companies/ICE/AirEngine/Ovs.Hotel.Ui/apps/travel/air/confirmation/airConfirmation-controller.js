(function () {
    "use strict";

    angular
        .module("airApp")
        .controller("airConfirmationController", airConfirmationController);

    airConfirmationController.$inject = [
        "$window", "$scope", "$location", "$timeout", "$state", "$anchorScroll",
        "$stateParams", "dialogService", "confirmationFactory", "airBookService", "airConfirmationService", "airConfirmationServiceFactory", "bookStateFactory"
    ];

    function airConfirmationController($window, $scope, $location, $timeout, $state, $anchorScroll,
        $stateParams, dialogService, confirmationFactory, airBookService, airConfirmationService, airConfirmationServiceFactory, bookStateFactory) {

        var confirm = this;
        confirm.debug = true;
        confirm.booking = {};

        var bookingId = $stateParams.bookingId || 'GFKR6SZF';
        // console.log('confirm.bookingId', bookingId);

        if (bookingId.length > 0) {
            // REPLACE THIS...
            //var promise = airConfirmationServiceFactory.getTestData(); 

            // WITH THIS...
            var promise = airConfirmationServiceFactory.getBooking(bookingId);

            promise.then(function (response) {
                confirm.booking = response.data.BookingRecord;
                console.log('confirm.booking', confirm.booking);
            });
        }        
    };
})();

angular
    .module('airApp')
    .filter('xgetTravelDateFormatted', function() {

        // Example  23-Jan-17 (Mon) 
        return function(str) {
            var daysNames = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
                monthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sept', 'Oct', 'Nov', 'Dec'],
                d = new Date(str),
                day = d.getDate(),
                month = monthNames[d.getMonth()],
                year = d.getFullYear().toString().substr(2, 2),
                dayName = daysNames[d.getDay()];

            return day + '-' + month + '-' + year + ' (' + dayName + ')';

        }

    })
    .filter('getFlightTime', function () {
        return function (str) {
            var hours = Math.trunc(str / 60),
                minutes = str % 60;
            return hours + 'h ' + minutes + 'm';
        }
    })
   .filter('getTravelTimeFormatted', function() {
        return function(time) {
            var dtParts = time.split(":");
            var hours = dtParts[0];
            var minutes = dtParts[1];
            var suffix = "AM";
            if (hours > 12) {
                hours = hours - 12;
                suffix = "PM";
            }
            else if (hours == "00") {
                hours = 12;
                suffix = "AM";
            }
            else if (hours == "12") {
                suffix = "PM";
            }
            return (hours + ":" + minutes + " " + suffix);
        }
    });
    

   