(function () {
    'use strict';

    angular
        .module('hotelApp')
        .factory('reviewFactory', reviewFactory);

    reviewFactory.$inject = [];

    function reviewFactory() {
        var reviewData = {};
        reviewData =
            {
                review: {
                    /*will dynamically populate on update call*/
                },
                getDetails: function () {
                    return this.review;
                },
                update: function (reviewPurchase) {
                    this.review = reviewPurchase;
                    console.log('review factory : ' + JSON.stringify(this.review, null, "\t"));
                }
            };

        return reviewData;
    };

})();