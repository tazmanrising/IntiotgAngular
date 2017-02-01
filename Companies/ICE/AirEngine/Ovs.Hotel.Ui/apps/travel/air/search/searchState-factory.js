(function () {
    "use strict";

    angular
        .module("airApp")
        .factory("searchStateFactory", searchStateFactory);

    searchStateFactory.$inject = [];

    function searchStateFactory() {
        var searchData = {};
        searchData =
            {
                /*
                The search object is dynamically updated when the user pushes the search for flights button in the UI. 

                */
                search: {},
                getSearch: function () {
                    return search;
                },
                update: function (userSearch) {
                    this.search = userSearch || {};
                    console.log('searchStateFactory search', this.search);
                }
            };

        return searchData;
    }
})();