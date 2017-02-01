(function () {
    'use strict';

    angular
        .module('hotelApp')
        .factory('footerFactory', footerFactory);

    footerFactory.$inject = [];
    function footerFactory() {
        var footerData = {};
        footerData =
            {
                /*
                This will dynamically populate as the update function is called.
                */
                footerItem: {},
                getFooterItem: function () {
                    return footerItem;
                },
                update: function (item) {
                    this.footerItem = item || {};
                    //console.log('footer-factory has been updated : ' + JSON.stringify(footerData.footerItem, null, '\t'))
                }
            };
        //console.log('Location : footer-factory : ' + JSON.stringify(footerData, null, '\t'))
        return footerData;
    }
})();