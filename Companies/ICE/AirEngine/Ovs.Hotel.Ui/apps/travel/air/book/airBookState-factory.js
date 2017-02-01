(function () {
    'use strict';

    angular
        .module('airApp')
        .factory('bookStateFactory', bookStateFactory);

    bookStateFactory.$inject = [];

    function bookStateFactory() {
        var purchaseData = {};
        purchaseData =
            {
                purchaseDetails: {
                    /*will dynamically populate on update call which comes from the hotelDetail-controller*/
                },
                update: function (purchaseDetailsUsed) {
                    this.purchaseDetails = purchaseDetailsUsed;
                    console.log('bookStateFactory > update:', JSON.stringify(this.purchaseDetails, null, "\t"));
                }
            };

        return purchaseData;
    };

})();