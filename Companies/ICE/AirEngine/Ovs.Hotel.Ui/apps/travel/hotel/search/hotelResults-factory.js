(function () {
    "use strict";

    angular
        .module("hotelApp")
        .factory("hotelresultsFactory", hotelresultsFactory);

    hotelresultsFactory.$inject = [];



    function hotelresultsFactory() {
        var searchResults = {};
        searchResults =
            {
  
                results: {},
                getResults: function () {
                    //console.log('factory is returning results...');
                    return results;
                },
                update: function (hotelResults) {
                    this.results = hotelResults || {};
                    //console.log('searchResults-factory has been updated : ' + JSON.stringify(searchResults.results, null, '\t'))
                }
            };
        //console.log('Location : searchResults-factory | searchResults.results : ' + JSON.stringify(searchResults.results, null, '\t'))
        return searchResults;
    }
})();