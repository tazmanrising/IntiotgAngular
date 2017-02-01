"use strict";

describe("Air airports factory", function () {
    var apFactory;

    beforeEach(function () {
        module("airApp");
    });

    beforeEach(inject(function ($injector, _$rootScope_) {
        var scope = _$rootScope_.$new()
        apFactory = $injector.get('airAirportsFactory');
    }));
    it("can look up an airport's details by code.", function () {
        var testAirportDetails = apFactory.getAirportDetails("YUM");

        var expectedAirportDetails = {
            airportCode: "YUM",
            city: "Yuma",
            state: "Arizona",
            country: "United States",
            airportName: "Yuma International Airport",
            timeZone: "America/Phoenix"
        }

        expect(testAirportDetails).toEqual(expectedAirportDetails);
    });

    it("returns an array of airport codes and display text for the dropdown list.", function () {

        var testData = apFactory.getAirportList();

        expect(testData.length).toBeGreaterThan(0);
        expect(testData).toContain({ airportCode: "YUM", displayText: "(YUM) Yuma, Arizona, United States - Yuma International Airport" });
    })
});