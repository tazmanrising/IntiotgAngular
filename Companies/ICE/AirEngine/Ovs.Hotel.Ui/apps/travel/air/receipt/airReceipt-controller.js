(function () {
    "use strict";

    angular
        .module("airApp")
        .controller("airReceiptController", airReceiptController);

    airReceiptController.$inject = [
    "$window", "$scope", "$location", "$timeout", "$state", "$anchorScroll",
    "$stateParams", "dialogService", "currentSession", "lookupBookingService", "usSpinnerService", "receiptService", "airportCodeService", "airlineService"
    ];

    function airReceiptController($window, $scope, $location, $timeout, $state, $anchorScroll,
        $stateParams, dialogService, currentSession, lookupBookingService, usSpinnerService, receiptService, airportCodeService, airlineService) {

        var receipt = this;
        //console.log(receipt);
        receipt.airportCode = {};
        

        //var promise = airportCodeService.getAirlineFromCarrierId('GH')
        //    .then(function (result) {
        //        xx = result;
        //        receipt.airportCode = result;
                
        //    })
        //    .catch(function () {
        //        console.log('problem');
        //    });
        
        //console.log(receipt);
       
        //promise.then(function () {  
        //    console.log(' receipt.airportCode',  receipt.airportCode);
        //});

        var promise = airlineService.getAllAirlines('GH')
            .then(function (result) {
                receipt.airportCode = result;
            })
            .catch(function () {
                console.log('problem');
            });


        receipt.bookingData = false;
        receipt.success = false;
        receipt.showInitialInfo = true;
        receipt.userData = {
            memberId: $stateParams.memberId,
            bookingId: $stateParams.bookingId
        }
        receipt.currentSession = currentSession;
        receipt.currencyFormat = receipt.currentSession.display_options.options.currency_format || '';

        /********** Send additional emails the invoice ********/
        receipt.emails = [{ address: '' }];
        receipt.addEmailImage = "/apps/assets/imgs/air/common/plus-sign.png";
        receipt.subtractEmailImage = "/apps/assets/imgs/air/common/subtract-sign.png";

        receipt.addEmail = function () {
            receipt.emails.push({ address: '' });
        };
        receipt.subtrackEmail = function () {
            if (receipt.emails.length !== 1) {
                receipt.emails.pop();
            }
        };

        receipt.emailChange = function (email) {
            receipt.emailsShown = angular.element(document.getElementsByClassName("email")).length;
            if (email == '') { return; }
            //if this is the first entry
            if (receipt.emails.length == 1 && receipt.emailsShown == 1) {
                receipt.emails = [{ address: email }];
            }
                //if the email address has been entered already
            else if (receipt.emails.length == receipt.emailsShown) {
                return;
            }
            else if (receipt.emails.length > receipt.emailsShown) {
                var emailCount = receipt.emails.length - receipt.emailsShown;
                receipt.emails.pop();
            }
            else if (receipt.emails.length !== receipt.emailsShown) {
                //if the user hasn't entered the email yet give them the chance
                return;
            }
            else {
                receipt.emails.push({ address: email });
            }
        }
        function getFinalEmails() {
            var processEmails = [];
            angular.forEach(receipt.emails, function (email, key) {
                //make sure that it's not just a blank email input
                if (email.address) {
                    if (email.address.length > 1) {
                        processEmails.push(email.address)
                    }
                }
            })
            return processEmails;
        }
        /********** End additional emails the invoice ********/

        //gets all necesarry data for the user to see which booking they will be sending the receipt for. 
        receipt.getBookingData = function () {
            usSpinnerService.spin("spinner-1");

            lookupBookingService.getBookingDetails(receipt.userData)
                .success(function (response) {
                    receipt.receiptData = response || {};
                    receipt.bookingData = true;

                    //console.log("receipt returned :" + JSON.stringify(receipt.receiptData, null, "\t"));
                    //console.log("flattened receipt returned :" + angular.toJson(receipt.receiptData));


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
                .error(function (data, status, headers, config, statusText) {
                    receipt.showHeader = false;
                    if (status === -1) {
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
            var finalEmails = getFinalEmails();
            finalEmails = finalEmails.toString();
            receiptService.resendReceiptDetails(receipt.userData, receipt.receiptData.active, finalEmails)
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
                .error(function (data, status, headers, config, statusText) {
                    receipt.showHeader = false;
                    if (status === -1) {
                        dialogService.showDialog("It's taking too long!", "We apologize for the delay.  Your request has been recorded so we can research it.  Please try again in a few seconds.");
                    } else {
                        dialogService.showDialog("We've had a problem...", "We apologize but there has been an error during your query.  Your request has been recorded so we can research it.");
                    }
                    usSpinnerService.stop("spinner-1");
                });
        };
    }


}());
