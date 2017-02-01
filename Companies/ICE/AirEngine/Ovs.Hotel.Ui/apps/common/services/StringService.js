(function () {
    "use strict";

    angular.module("airApp")
        .factory("StringService", StringService);

    StringService.$inject = [];

    function StringService() {
        var stringData = {};

        stringData = {
            isEmptyOrNull: function (item) {
                return (item === undefined || item === null || item === '' || item.length < 1);
            },
            isObjectEmpty: function (obj) {
                for (var key in obj) {
                    if (obj.hasOwnProperty(key))
                        return false;
                }
                return true;
            }
        };

        return stringData;
    }


})();