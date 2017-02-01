"use strict";

describe("Air booking controller", function () {
    var bookController;

    beforeEach(function () {
        module("airApp");
    });

    beforeEach(inject(function (_$controller_, _$rootScope_) {
        var $controller = _$controller_;
        var scope = _$rootScope_.$new()
        var stateParams = { bookingInfoObject: { paxTypes: [] } };
        bookController = $controller('airBookController', { $scope: scope, $stateParams: stateParams });
    }));

    it("can fetch the fare information, given the flight object and the PAX code, and return it as an object with: base fare, the taxes/fees paid, and the total package price per PAX.", function () {
        var testFareArray = [{
                PassengerType: "Adult",
                TotalFareAmount: 325.0,
                TotalTaxAmount: 25.0
            }, {
                PassengerType: "Child",
                TotalFareAmount: 165.0,
                TotalTaxAmount: 15.0
            }]

        var testPaxCode1 = "Adult";
        var testPaxCode2 = "Child";

        var expectedAdultTotalFareAmount = "325.00";
        var expectedAdultTotalTaxAmount = "25.00";
        var expectedAdultBaseFareAmount = "300.00";

        var expectedChildTotalFareAmount = "165.00";
        var expectedChildTotalTaxAmount = "15.00";
        var expectedChildBaseFareAmount = "150.00";

        var actualAdultTotalFareAmount = bookController._getPaxFareDetails(testFareArray, testPaxCode1).totalFare.toString();
        var actualAdultTotalTaxAmount = bookController._getPaxFareDetails(testFareArray, testPaxCode1).totalTaxes.toString();
        var actualAdultBaseFareAmount = bookController._getPaxFareDetails(testFareArray, testPaxCode1).baseFare.toString();
        var actualChildTotalFareAmount = bookController._getPaxFareDetails(testFareArray, testPaxCode2).totalFare.toString();
        var actualChildTotalTaxAmount = bookController._getPaxFareDetails(testFareArray, testPaxCode2).totalTaxes.toString();
        var actualChildBaseFareAmount = bookController._getPaxFareDetails(testFareArray, testPaxCode2).baseFare.toString();

        expect(actualAdultTotalFareAmount).toEqual(expectedAdultTotalFareAmount);
        expect(actualAdultTotalTaxAmount).toEqual(expectedAdultTotalTaxAmount);
        expect(actualAdultBaseFareAmount).toEqual(expectedAdultBaseFareAmount);

        expect(actualChildTotalFareAmount).toEqual(expectedChildTotalFareAmount);
        expect(actualChildTotalTaxAmount).toEqual(expectedChildTotalTaxAmount);
        expect(actualChildBaseFareAmount).toEqual(expectedChildBaseFareAmount);
        
    });
    it("doesn't have floating point errors doing math around the fare.", function () {
        var testFareArray = [{
            PassengerType: "Adult",
            TotalFareAmount: 548.2,
            TotalTaxAmount: 64.48
        }]

        var testPaxCode1 = "Adult";

        var expectedAdultTotalFareAmount = "548.20";
        var expectedAdultTotalTaxAmount = "64.48";
        var expectedAdultBaseFareAmount = "483.72";

        var actualAdultTotalFareAmount = bookController._getPaxFareDetails(testFareArray, testPaxCode1).totalFare.toString();
        var actualAdultTotalTaxAmount = bookController._getPaxFareDetails(testFareArray, testPaxCode1).totalTaxes.toString();
        var actualAdultBaseFareAmount = bookController._getPaxFareDetails(testFareArray, testPaxCode1).baseFare.toString();

        expect(actualAdultBaseFareAmount).toEqual(expectedAdultBaseFareAmount);
        expect(actualAdultTotalFareAmount).toEqual(expectedAdultTotalFareAmount);
        expect(actualAdultTotalTaxAmount).toEqual(expectedAdultTotalTaxAmount);
    });
    it("generates unique traveler objects equal to the number of searched PAX.");
    it("must have unique values for traveler type assigned to each PAX.");
    it("generates the correct number of days for the days dropdown (for birthday) dependent on the month.");
    it("validates that traveler associated with infant fares will still be less than two years of age on the date of the departure of the final flight on the proposed itinerary.", function () {
    });
    it("formats the flight summary dates to a human-friendly format.", function () {
        var expectedDateOutput = "Fri, Jan 1, 2016 at 1:53 AM";
        var dateToParse = "1/1/2016";
        var timeToParse = "01:53";
        var timeZoneToParse = "America/New_York"

        var result = bookController.formatFlightSummaryDate(dateToParse, timeToParse, timeZoneToParse);

        expect(result).toEqual(expectedDateOutput);
    })
    
});