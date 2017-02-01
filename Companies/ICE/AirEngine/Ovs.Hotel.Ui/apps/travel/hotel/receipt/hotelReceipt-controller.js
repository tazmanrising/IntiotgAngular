(function () {
    "use strict";

    angular
        .module("hotelApp")
        .controller("HotelsReceiptController", HotelsReceiptController);

    HotelsReceiptController.$inject = [
         '$location', '$state', '$stateParams', 'currentSession', 'cancelGetCancelBooking', 'usSpinnerService', 'receiptService', 'dialogService'
    ];

    function HotelsReceiptController($location, $state, $stateParams, currentSession, cancelGetCancelBooking, usSpinnerService, receiptService, dialogService) {

        var receipt = this;
        receipt.bookingData = false;
        receipt.success = false;
        receipt.showInitialInfo = true;
        receipt.stars = [1, 2, 3, 4, 5];
        receipt.userData = {
            memberId: $stateParams.memberId,
            bookingId: $stateParams.bookingId,
        };
        receipt.currentSession = currentSession;
        receipt.currencyFormat = receipt.currentSession.display_options.options.currency_format || '';
        //gets all necesarry data for the user to see which booking they will be sending the receipt for. 
        receipt.getBookingData = function () {
            usSpinnerService.spin("spinner-1");
            //although it is named cancelGetCancelBooking it just returns the information for the current transaction. The service should 
            //be renamed at some point to be more generic so that it is obvious that it is called by more than one controller. 
            receipt.receiptData = cancelGetCancelBooking.getCancelDetails(receipt.userData)
                .success(function (response) {
                    receipt.receiptData = response || {};
                    receipt.bookingData = true; 
                    //console.log("receipt returned :" + JSON.stringify(receipt.receiptData, null, "\t"));
                    if (receipt.receiptData.success == false) {
                        receipt.showInitialInfo = false;
                        if ($stateParams.agentId) {
                            receipt.errorMessage = receipt.receiptData.error_message_agent;
                        }
                        else {
                            receipt.errorMessage = receipt.receiptData.error_message_user;
                        }
                    };
                    usSpinnerService.stop("spinner-1");
                })
                .error(function (error) {
                    receipt.showHeader = false;
                    if (receipt.receiptData.$$state.value.status === -1) {
                        dialogService.showDialog("It's taking too long!", "We apologize for the delay.  Your request has been recorded so we can research it.  Please try again in a few seconds.");
                    } else {
                        dialogService.showDialog("We've had a problem...", "We apologize but there has been an error during your query.  Your request has been recorded so we can research it.");
                    }
                    usSpinnerService.stop("spinner-1");
                });
        };

        //gets all necesarry data for the user to see which booking they will be sending the receipt for. 
        receipt.resend = function () {
            usSpinnerService.spin("spinner-1");
            receipt.resendReceipt = receiptService.resendReceiptDetails(receipt.userData, receipt.receiptData.active)
                .success(function (response) {
                    receipt.resendReceipt = response || {};
                    receipt.bookingData = true;
                    receipt.showInitialInfo = false;
                    receipt.success = true;
                    //console.log("receipt returned :" + JSON.stringify(receipt.receiptData, null, "\t"));
                    if (receipt.resendReceipt.success == false) {
     
                        if ($stateParams.agentId) {
                            receipt.errorMessage = receipt.resendReceipt.error_message_agent;
                        }
                        else {
                            receipt.errorMessage = receipt.resendReceipt.error_message_user;
                        }
                    };
                    usSpinnerService.stop("spinner-1");
                })
                .error(function (error) {
                    receipt.showHeader = false;
                    if (receipt.resendReceipt.$$state.value.status === -1) {
                        dialogService.showDialog("It's taking too long!", "We apologize for the delay.  Your request has been recorded so we can research it.  Please try again in a few seconds.");
                    } else {
                        dialogService.showDialog("We've had a problem...", "We apologize but there has been an error during your query.  Your request has been recorded so we can research it.");
                    }
                    usSpinnerService.stop("spinner-1");
                });
        };
    };

})();
