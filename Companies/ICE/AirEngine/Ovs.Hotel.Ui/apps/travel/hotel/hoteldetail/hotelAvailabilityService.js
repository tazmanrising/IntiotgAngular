(function () {
    'use strict';
    function AvailabilityService($http) {
        return {
            callServer: function (masterid, fromdate, todate, numberofrooms, numberofguests, userid, locale, currencycode,  controller) {
                var qry = "/api/v1/hotelavailability?";
                qry = qry + "masterId=" + masterid + "&",
                    qry = qry + "checkinDateValue=" + fromdate + "&",
                    qry = qry + "checkoutDateValue=" + todate + "&",
                    qry = qry + "numberofrooms=" + numberofrooms + "&",
                    qry = qry + "numberofguests=" + numberofguests + "&",
                    qry = qry + "userid=" + userid + "&",
                    qry = qry + "locale=" + locale + "&",
                    qry = qry + "currencycode=" + currencycode + "&",
                    qry = qry + "includePropertyInfo=true"; 

                this.ServerPromise = $http.get(qry).then
                (function (res) {
                    controller.hotelDetail = res.data;
                    controller.availabilityRequestCompleted();
                });
            }
        }
    }

    angular
        .module('hotelApp')
        .factory('AvailabilityService', AvailabilityService);

    AvailabilityService.$inject = ['$http'];;

})();