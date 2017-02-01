(function () {
    'use strict';

    angular
        .module('airApp')
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
                    console.log('confirmation factory : ' + JSON.stringify(this.confirmation, null, "\t"));
                },

            };

        return confirmData;
    };

})();