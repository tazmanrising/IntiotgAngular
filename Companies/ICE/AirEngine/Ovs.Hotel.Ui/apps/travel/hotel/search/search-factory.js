(function() {
    "use strict";

    angular
        .module("hotelApp")
        .factory("searchFactory", searchFactory);

    searchFactory.$inject = [];

    function searchFactory() {
        var searchData = {};
        searchData =
            {
                /*
                The search object is dynamically updated when the user pushes the search for hotels button in the UI. 

                This object should contain

                destination: '',
                latitude: 0.00,
                longitude: 0.00,
                numAdults: 1,
                numChildren: 0,
                radius: 5,
                checkin: Date.now(),
                checkout: Date.now(),
                userid: "",
                locale: "",
                currencycode: ""
                */
                search: {},
                getSearch: function(){
                    return search;
                },
                update: function (userSearch) {
                    this.search = userSearch || {};
                   // console.log('search-factory has been updated : ' + JSON.stringify(searchData.search, null, '\t'))
                }
            };
        //console.log('Location : search-factory | searchData.search : ' + JSON.stringify(searchData.search, null, '\t'))
        return searchData;
    }
})();