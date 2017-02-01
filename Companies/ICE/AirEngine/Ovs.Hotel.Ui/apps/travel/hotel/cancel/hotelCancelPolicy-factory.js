(function () {
    'use strict';

    angular
        .module('hotelApp')
        .factory('cancelPolicyFactory', cancelPolicyFactory);

    cancelPolicyFactory.$inject = [];

    function cancelPolicyFactory() {
        var policyData = {};
        policyData =
            {
                policy: {
                    /*will dynamically populate on update call*/
                },
                getDetails: function () {
                    return this.policy;
                },
                update: function (selectedpolicy) {
                    this.policy = selectedpolicy;
                    //console.log('policy factory : ' + JSON.stringify(this.policy, null, "\t"));
                }
            };

        return policyData;
    };

})();