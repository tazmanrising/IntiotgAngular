(function () {
    'use strict';

    angular
        .module('hotelApp')
        .factory('bookPurchaseFactory', bookPurchaseFactory);

    bookPurchaseFactory.$inject = [];

    function bookPurchaseFactory() {
        var purchaseData = {};
        purchaseData =
            {
                purchaseDetails: {
                    /*will dynamically populate on update call which comes from the hotelDetail-controller*/
                },
                update: function (purchaseDetailsUsed) {
                    this.purchaseDetails = purchaseDetailsUsed;
                    //console.log('book purchase factory :' + JSON.stringify(this.purchaseDetails, null, "\t"));
                }
            };

        return purchaseData;
    };

})();

