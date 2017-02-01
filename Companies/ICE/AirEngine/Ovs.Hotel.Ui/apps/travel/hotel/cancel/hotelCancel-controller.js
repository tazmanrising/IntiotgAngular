(function () {
    "use strict";

    angular
        .module("hotelApp")
        .controller("HotelsCancelController", HotelsCancelController);

    HotelsCancelController.$inject = [
         '$location', '$state', '$stateParams', 'cancelGetCancelBooking', 'usSpinnerService', 'cancelService', 'currentSession', 'dialogService'
    ];

    function HotelsCancelController($location, $state, $stateParams, cancelGetCancelBooking, usSpinnerService, cancelService, currentSession, dialogService) {

        var cancel = this;
        cancel.bookingData = false;
        cancel.success = false;
        cancel.showInitialInfo = true;
        cancel.preCancel = true;
        cancel.stars = [1, 2, 3, 4, 5];
        var userData = {
            memberId: $stateParams.memberId,
            bookingId: $stateParams.bookingId,
            partnerId: currentSession.identity.ice_partner_id,
            nameId: currentSession.identity.ice_name_id,
            agentId: currentSession.identity.ice_agent_id,
        };

        cancel.currencyFormat = currentSession.display_options.options.currency_format || '';
        cancel.cashBackLabel = currentSession.display_options.labels.earned;

        //gets all necesarry data for the user to see which booking they will be cancelling. 
        cancel.getBookingData = function () {
            usSpinnerService.spin("spinner-1");
            cancel.cancelData = cancelGetCancelBooking.getCancelDetails(userData)
                .success(function (response) {
                    cancel.cancelData = response || {};
                    cancel.bookingData = true;
                    //console.log("cancel returned :" + JSON.stringify(cancel.cancelData, null, "\t"));
                    if (cancel.cancelData.success == false) {
                        if ($stateParams.agentId) {
                            cancel.errorMessage = cancel.cancelData.error_message_agent;
                        }
                        else {
                            cancel.errorMessage = cancel.cancelData.error_message_user;
                        }
                    };
                    if (cancel.cancelData.currency_code == 'CAD' || cancel.cancelData.currency_code == 'AUS' || cancel.cancelData.currency_code == 'NZD' || cancel.cancelData.currency_code == 'MXN') {
                        cancel.showCurrencyVerbiage = true;
                    };
                    usSpinnerService.stop("spinner-1");
                })
                .error(function (error) {
                    usSpinnerService.stop("spinner-1");
                    cancel.showHeader = false;
                    if (cancel.cancelData.$$state.value.status === -1) {
                        dialogService.showDialog("It's taking too long!", "We apologize for the delay.  Your request has been recorded so we can research it.  Please try again in a few seconds.");
                    } else {
                        dialogService.showDialog("We've had a problem...", "We apologize but there has been an error during your query.  Your request has been recorded so we can research it.");
                    }
                    cancel.show.error.cancelearch = true;
                });
        };

        //Cancels the current booking
        cancel.doCancel = function () {
            usSpinnerService.spin("spinner-1");
            cancel.cancelled = cancelService.conductCancel(userData)
                .success(function (response) {
                    cancel.cancelled = response || {};
                    cancel.success = true;
                    cancel.showInitialInfo = false;
                    cancel.preCancel = false;
                    if (cancel.cancelled.success == false) {
                        if ($stateParams.agentId) {
                            cancel.errorMessage = cancel.cancelled.error_message_agent;
                        }
                        else {
                            cancel.errorMessage = cancel.cancelled.error_message_user;
                        }
                    };

                    //console.log("cancel returned :" + JSON.stringify(cancel.cancelled, null, "\t"));
                usSpinnerService.stop("spinner-1");
                })
                .error(function (error) {
                    usSpinnerService.stop("spinner-1");
                    if (cancel.cancelled.$$state.value.status === -1) {
                        dialogService.showDialog("It's taking too long!", "We apologize for the delay.  Your request has been recorded so we can research it.  Please try again in a few seconds.");
                    } else {
                        dialogService.showDialog("We've had a problem...", "We apologize but there has been an error during your query.  Your request has been recorded so we can research it.");
                    }
                });
        };
};
    
})();
