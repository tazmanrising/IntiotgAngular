(function () {
    "use strict";

    angular
        .module("airApp")
        .factory("airPassengerFactory", airPassengerFactory);

    airPassengerFactory.$inject = [];

    function airPassengerFactory() {
        var paxFac = {};

        paxFac._searchedPaxTypes = {};
        paxFac._typesAsUniqueFares = []

        // Fares can be classed as "Adult"-type, or "Child"-type.
        // Adult-type fares can have certain fields/associations that Child-type fares cannot.
        // For example
        paxFac.ADULTTYPEFARES = ['Adult', 'Military'];

        //TODO: Get these labels as display options?
        paxFac._getPaxTypeLabelFromPaxCode = function (paxType) {
            switch (paxType) {
                case 'Adult':
                    return "Adult";
                case 'Child':
                    return "Child";
                case 'Infant':
                    return "Infant";
                default:
                    return "Passenger";
            }
        };

        paxFac.isAdultClassPassenger = function (paxCode) {
            return (paxFac.ADULTTYPEFARES.indexOf(paxCode) > -1)
        };

        paxFac.setSearchedPax = function (searchedPax) {
            // TODO: If we're going to save the passenger information for expired pricing
            // or flight re-selection, we'll also need to expire traveler info if
            // they change the PAX parameters of their search.
            paxFac._searchedPaxTypes = searchedPax;
            paxFac._typesAsUniqueFares = paxFac._convertToUniqueFares(searchedPax);
        };

        paxFac._convertToUniqueFares = function (searchedPax) {
            var newFares = [];
            var idToUse = 0;
            Object.keys(searchedPax).forEach(function (paxType) {
                for (var i = 0; i < searchedPax[paxType]; i++) {
                    newFares.push({
                        label: paxFac._getPaxTypeLabelFromPaxCode(paxType) + " #" + (i + 1).toString(),
                        code: paxType,
                        id: idToUse
                    });
                    idToUse++;
                }
            });

            return newFares;
        };

        paxFac.getSearchedPaxAsFares = function () {
            var ptypes = paxFac._typesAsUniqueFares;

            if (ptypes === undefined || ptypes.length === 0) {

                // #TODO: TESTING PURPOSES; remove in production
                ptypes = [
                    {
                        "code": "Adult",
                        "id": 0,
                        "label": "Adult #1"
                    },
                    {
                        "code": "Child",
                        "id": 1,
                        "label": "Child #1"
                    },
                    {
                        "code": "Infant",
                        "id": 2,
                        "label": "Infant #1"
                    }
                ];
            }

            return ptypes;
        };

        paxFac.getPaxAsTravelerInfo = function () {
            var faresToInit = paxFac._typesAsUniqueFares;
            var tmpTravelers = [];

            faresToInit.forEach(function (type) {
                var newAdultTraveler = {
                    travelerType: type.code,
                    travelerTypeId: type.id,
                    firstName: "",
                    middleName: "",
                    lastName: "",
                    gender: "",
                    birthDate: {
                        day: 1,
                        month: "Jan",
                        year: 2017
                    },
                    freqFlyerProgram: "",
                    freqFlyerNumber: "",
                    knownTravelerNumber: "",
                    knownTravelerProgram: "",
                    tsaRedressNumber: "",
                    specialAssistance: ""
                };

                tmpTravelers.push(newAdultTraveler);
            });

            if (tmpTravelers.length === 0) {
                // #TODO: TESTING PURPOSES; remove in production
                var travelers = [
                    {
                        "travelerType": "Adult",
                        "travelerTypeId": 0,
                        "firstName": "Tom",
                        "middleName": "",
                        "lastName": "Smith",
                        "gender": "M",
                        "birthDate": {
                            month: "Mar",
                            day: 18,
                            year: 1947
                        },
                        "freqFlyerProgram": "",
                        "freqFlyerNumber": "",
                        "knownTravelerNumber": "",
                        "knownTravelerProgram": "",
                        "tsaRedressNumber": "",
                        "seatPreference": "Window"
                    },
                    {
                        "travelerType": "Adult",
                        "travelerTypeId": 0,
                        "firstName": "Teresa",
                        "middleName": "",
                        "lastName": "Smith",
                        "gender": "F",
                        "birthDate": {
                            month: "Jun",
                            day: 28,
                            year: 1957
                        },
                        "freqFlyerProgram": "",
                        "freqFlyerNumber": "",
                        "knownTravelerNumber": "",
                        "knownTravelerProgram": "",
                        "tsaRedressNumber": "",
                        "seatPreference": "Aisle"
                    },
                    {
                        "travelerType": "Child",
                        "travelerTypeId": 1,
                        "firstName": "Child",
                        "middleName": "",
                        "lastName": "Smith",
                        "gender": "M",
                        "birthDate": {
                            month: "Nov",
                            day: 1,
                            year: 2012
                        },
                        "freqFlyerProgram": "",
                        "freqFlyerNumber": "",
                        "knownTravelerNumber": "",
                        "knownTravelerProgram": "",
                        "tsaRedressNumber": "",
                        "seatPreference": "Window"
                    },
                    {
                        "travelerType": "Infant",
                        "travelerTypeId": 2,
                        "firstName": "Toddler",
                        "middleName": "",
                        "lastName": "Smith",
                        "gender": "F",
                        "birthDate": {
                            month: "Sep",
                            day: 8,
                            year: 2017
                        },
                        "freqFlyerProgram": "",
                        "freqFlyerNumber": "",
                        "knownTravelerNumber": "",
                        "knownTravelerProgram": "",
                        "tsaRedressNumber": "",
                        "seatPreference": "Aisle"
                    }
                ];
                tmpTravelers = travelers;
            }

            return tmpTravelers;
        };

        return paxFac;
    };
})();