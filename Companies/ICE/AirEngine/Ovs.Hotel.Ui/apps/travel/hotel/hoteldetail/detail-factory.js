(function () {
    'use strict';

    angular
        .module('hotelApp')
        .factory('detailFactory', detailFactory);

    detailFactory.$inject = ['$http'];

    function detailFactory($http) {
        var detailData = {};
        detailData =
            {
                details: {
                    /*will dynamically populate on update call*/
                },
                getDetails: function(){
                    return this.details;
                },
                update: function (selectedDetailData) {
                    this.details = selectedDetailData;
                    //console.log('detail factory : ' + JSON.stringify(this.details, null, "\t"));
                }
            };

        return detailData;
        };

})();