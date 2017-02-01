"use strict";

describe("Air search controller", function () {
    var searchController;

    beforeEach(function () {
        module("airApp");
    });

    beforeEach(inject(function (_$controller_, _$rootScope_) {
        var $controller = _$controller_;
        var scope = _$rootScope_.$new()
        searchController = $controller('airController', { $scope: scope });
    }));

    it("stores valid search params as search state after search is submitted.");

    it("generates a Kendo data source for search results when search is submitted.");

    it("validates that there are at least equal or greater number of adults than infants.");
    it("validates that there are at least one adult when booking a child fare.");

    it("replaces the previously selected flights, if a new flight is chosen for booking", function () {
        // Test flight 1
        // Test flight 2 for rebooking.

        // Trigger book with test flight 1.
        // Retrigger book with test flight 2.

        // Selected flights should only contain test flight 2.
    })
    
    it("generates a query string from the search parameters object.", function () {
        var roundTripSearchParamsToTest = {
            searchType: "RoundTrip",
            origin: "PHX",
            destination: "MCO",
            departureDate: moment("2016-08-01"),
            returnDate: moment("2016-08-02"),
            paxTypes: {
                Adult: 3,
                Child: 2,
                Infant: 1
            }
        };
        var qsUnderTestRoundTrip = searchController._getQueryStringFromParams(roundTripSearchParamsToTest);
        var expectedQsRoundTrip = "/api/svc/air/v1/flightsearch?originname=PHX&destinationname=MCO&departuredate=20160801&returnDate=20160802&numAdult=3&numChild=2&numInfant=1&run=true";
        expect(qsUnderTestRoundTrip).toEqual(expectedQsRoundTrip);

    });

    it("generates a query string from the search parameters object, without a returnDate, if the searchType is oneWay.", function () {
        var oneWaySearchParamsToTest = {
            searchType: "OneWay",
            origin: "PHX",
            destination: "MCO",
            departureDate: moment("2016-08-01"),
            returnDate: moment("2016-08-02"),
            paxTypes: {
                Adult: 3,
                Child: 2,
                Infant: 1
            }
        };
        var qsUnderTestOneWay = searchController._getQueryStringFromParams(oneWaySearchParamsToTest);
        var expectedQsOneWay = "/api/svc/air/v1/flightsearch?originname=PHX&destinationname=MCO&departuredate=20160801&numAdult=3&numChild=2&numInfant=1&run=true";
        expect(qsUnderTestOneWay).toEqual(expectedQsOneWay);
    });

    it("has a means to validate that the return date is after (or on the same as) the date of initial departure.", function () {
        var test1Depart = new Date("01/01/2016");
        var test1Return = new Date("01/02/2016");

        var test2Depart = new Date("01/01/2017");
        var test2Return = new Date("01/02/2016");

        var testCase1 = searchController._isValidReturnDate(test1Return, test1Depart);
        var testCase2 = searchController._isValidReturnDate(test2Return, test2Depart);

        var expectedResult1 = true;
        var expectedResult2 = false;

        expect(testCase1).toEqual(expectedResult1);
        expect(testCase2).toEqual(expectedResult2);
    });
});