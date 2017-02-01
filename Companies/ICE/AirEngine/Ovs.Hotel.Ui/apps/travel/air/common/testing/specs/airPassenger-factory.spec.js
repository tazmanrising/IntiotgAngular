"use strict";

describe("Air passengers factory", function () {
    var paxFactory;

    beforeEach(function () {
        module("airApp");
    });

    beforeEach(inject(function ($injector, _$rootScope_) {
        var scope = _$rootScope_.$new()
        paxFactory = $injector.get('airPassengerFactory');
    }));
    it("accepts an object indicating the number of passengers of each passenger-type that were searched for.", function () {
        var testObject = {
            "Adult": 2,
            "Child": 1,
        }

        paxFactory.setSearchedPax(testObject);

        var actualState = paxFactory._searchedPaxTypes;
        var expectedState = {
            "Adult": 2,
            "Child": 1,
        }

        expect(actualState).toEqual(expectedState);
    });

    it("can convert searched passengers into an array of individual passenger fares.", function () {
        var searchParamsToTest = {
            Adult: 2,
            Child: 1,
            Infant: 0
        }

        paxFactory.setSearchedPax(searchParamsToTest)

        var expectedTravelerTypes = [{
            label: "Adult #1",
            code: "Adult",
            id: 0
        }, {
            label: "Adult #2",
            code: "Adult",
            id: 1
        }, {
            label: "Child #1",
            code: "Child",
            id: 2
        }]

        var travelerTypesUnderTest = paxFactory.getSearchedPaxAsFares();

        expect(travelerTypesUnderTest).toEqual(expectedTravelerTypes);
        //expect(travelerTypesUnderTest[1]).toEqual(expectedTravelerTypes[1]);
        //expect(travelerTypesUnderTest[2]).toEqual(expectedTravelerTypes[2]);
        //expect(travelerTypesUnderTest.length).toEqual(expectedTravelerTypes.length);

    });

    it("returns a traveler information object for each searched passenger.", function () {
        var testParams = {
            "Adult": 1,
            "Child": 0,
            "Infant": 0,
        }

        paxFactory.setSearchedPax(testParams);

        var testPax = paxFactory.getPaxAsTravelerInfo();

        var expectedPax = [{
            travelerType: "Adult",
            travelerTypeId: 0,
            firstName: "",
            middleName: "",
            lastName: "",
            gender: "",
            birthDate: "",
            freqFlyerProgram: "",
            freqFlyerNumber: "",
            knownTravelerNumber: "",
            knownTravelerProgram: "",
            tsaRedressNumber: "",
            phoneNumber: "",
            tcpaOptIn: false,
        }];
        
        expect(testPax).toEqual(expectedPax)
    });

    it("can determine an 'adult-class' fare", function () {
        var testCodeADT = paxFactory.isAdultClassPassenger("Adult");
        var expectedForADT = true;

        var testCodeCHD = paxFactory.isAdultClassPassenger("Child");
        var expectedForCHD = false;

        expect(testCodeADT).toEqual(expectedForADT);
        expect(testCodeCHD).toEqual(expectedForCHD);
    });
});