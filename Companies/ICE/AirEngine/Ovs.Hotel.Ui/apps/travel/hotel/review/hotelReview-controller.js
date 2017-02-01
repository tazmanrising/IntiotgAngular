(function () {
    "use strict";

    angular
        .module("hotelApp")
        .controller("HotelsReviewController", HotelsReviewController);

    HotelsReviewController.$inject = [
         '$location', '$state', 'searchFactory', 'detailFactory', 'usSpinnerService', 'hotelBookService', 'currentSession', 'selectedRoomFactory', 'cancelPolicyFactory', 'reviewFactory'
    ];

    function HotelsReviewController($location, $state, searchFactory, detailFactory, usSpinnerService, hotelBookService, currentSession, selectedRoomFactory, cancelPolicyFactory, reviewFactory) {

        var review = this;

        review.currentSession = currentSession;
        //console.log('book - currentSession: ' + JSON.stringify(currentSession, null, '\t'));

        review.cancelPolicy = cancelPolicyFactory.policy || {};
        //console.log('book controller cancelPolicy : ' + JSON.stringify(review.cancelPolicy, null, '\t'));

        /*confirm search details*/
        review.originalSearch = searchFactory.search || {};
        //console.log('search details : ' + JSON.stringify(review.originalSearch, null, '\t'));

        review.details = detailFactory.details || {};
        //console.log('book - detailFactory: ' + JSON.stringify(review.details, null, '\t'));

        review.room = selectedRoomFactory.roomDetails || {};
        //console.log('book - room factory : ' + JSON.stringify(review.room, null, '\t')
        review.purchaseDet = reviewFactory.getDetails || {};
        console.log('get details' + review.purchaseDet);

        review.purchase = reviewFactory.review || {};
        console.log('get details' + review.purchase);

        review.review = function (purchaseInfo) {
            reviewFactory.update(purchaseInfo);

            $state.go('review');
            //console.log('review purchase : ' + JSON.stringify(review.purchase));
        };


    };

})();