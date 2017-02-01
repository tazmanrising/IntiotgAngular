(function () {
    "use strict";

    angular
        .module("hotelApp")
        .controller("HotelsConfirmationController", HotelsConfirmationController);

    HotelsConfirmationController.$inject = [
        '$location', '$state', 'searchFactory', 'detailFactory', 'usSpinnerService', 'confirmationFactory', 'selectedRoomFactory', 'bookPurchaseFactory', 'cancelPolicyFactory', 'currentSession'
    ];

    function HotelsConfirmationController($location, $state, searchFactory, detailFactory, usSpinnerService, confirmationFactory, selectedRoomFactory, bookPurchaseFactory, cancelPolicyFactory, currentSession) {

        var confirm = this;

        confirm.show = {
            error: {
                bookSaga: false,
                message: '',
                agent: {
                    message: ''
                },
                client: {
                    message: '',
                },
            }
        }
        confirm.orginalValues = confirmationFactory.originalValues;
        function startSpin() {
            usSpinnerService.spin("spinner-1");
        };
        function stopSpin() {
            usSpinnerService.stop("spinner-1");
        }

        confirm.currentSession = currentSession;

        /*confirm search details*/
        confirm.originalSearch = searchFactory.search || {};
        //console.log('search details : ' + JSON.stringify(confirm.originalSearch, null, '\t'));

        confirm.room = selectedRoomFactory.roomDetails || {};
        //console.log('confirm.room : ' + JSON.stringify(confirm.room, null, '\t'));

        confirm.purchase = bookPurchaseFactory.purchaseDetails || {};
        //console.log('confirm.purchase : ' + JSON.stringify(confirm.purchase, null, '\t'));

        confirm.cancelPolicy = cancelPolicyFactory.policy || {};
        //console.log('confirm.cancelPolicy : ' + JSON.stringify(confirm.cancelPolicy, null, '\t'));

        confirm.details = detailFactory.details || {};
        //console.log(' confirm.details: ' + JSON.stringify(confirm.details, null, '\t'));

        confirm.confirmationDetails = confirmationFactory.confirmation || 'There are currently no confirmation details. Please make another purchase.';
        //console.log(' confirm.confirmationDetails:' + JSON.stringify(confirm.confirmationDetails, null, '\t'));

        if (confirm.confirmationDetails.ApiResultCode) {
            if (confirm.confirmationDetails.ApiResultCode === 'ERROR_BOOK_SAGA') {
                confirm.show.error.bookSaga = true;
                confirm.show.error.message = confirm.confirmationDetails.ApiDebugResultMessage;
                confirm.show.errror.agent.message = confirm.confirmationDetails.ApiAgentResultMessage;
                confirm.show.errror.client.message = confirm.confirmationDetails.ApiClientResultMessage;
            };
        };

        confirm.currencyFormat = confirm.currentSession.display_options.options.currency_format || '';
        confirm.daily = confirm.currentSession.display_options.options.show_daily_price || '';
        confirm.stars = [1, 2, 3, 4, 5];
        confirm.ratings = [{
            name: '5 stars',
            value: 5
        },
            {
                name: '4 stars',
                value: 4
            },
            {
                name: '3 stars',
                value: 3
            },
             {
                 name: '2 stars',
                 value: 2
             },
             {
                 name: '1 star',
                 value: 1
             }];
    };

})();