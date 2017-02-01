(function () {
    'use strict';

    angular
        .module('hotelApp')
        .factory('confirmationFactory', confirmationFactory);

    confirmationFactory.$inject = [];

    function confirmationFactory() {
        var confirmData = {};
        confirmData =
            {
                confirmation: {
                    /*will dynamically populate on update call*/
                },
                update: function (confirmationUpdate) {
                    this.confirmation = confirmationUpdate;
                    //console.log('confirmation factory : ' + JSON.stringify(this.confirmation, null, "\t"));
                },
                originalValues: {
                           marketRate : 0,
                           marketTaxes: 0,
                           dbcLabel:'',
                           dbcApplied: 0,
                           vcApplied: 0,
                           vcLabel:'',
                           customerPaid: 0,
                           surcharges: 0,
                           cashBackEarned: 0,                       
                }

            };

        return confirmData;
    };

})();