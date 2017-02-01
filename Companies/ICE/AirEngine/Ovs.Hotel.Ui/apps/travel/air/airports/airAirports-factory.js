(function () {
    "use strict";

    angular
        .module("airApp")
        .factory("airAirportsFactory", airAirportsFactory);

    airAirportsFactory.$inject = [];

    function airAirportsFactory() {
        var apFactory = {};
        apFactory =
            {
                getAirportDetails: function (airportCode) {
                    /*  #TODO: Add detail lookup logic */

                    return airportCode;
                },

                // #TODO: TESTING PURPOSES; remove in production
                getDefaultFlights: function () {
                    return {
                        "selectedFlights":
                        [{
                            "MultiCarrier": false,
                            "Id": "O1",
                            "IsRefundable": false,
                            "PaxFareDetails": null,
                            "TotalFareAmount": 401.2,
                            "TotalTaxAmount": 70.04,
                            "TotalMaxFareAmount": 0,
                            "FlightType": 0,
                            "OriginFilter": true,
                            "ReturnFilter": false,
                            "Show": true,
                            "MarketingCarriers": ["American Airlines", "American Airlines"],
                            "MarkeOperatingCarriers": ["American Airlines", "American Airlines"],
                            "Class": null,
                            "OriginAirport": "PHX",
                            "DestinationAirport": "MCO",
                            "Segments": [{
                                "OriginFilter": true, "ReturnFilter": false, "Show": true,
                                "SegmentType": null, "CarrierCode": "AA", "OpCarrierCode": "AA", "FlightNumber": "885", "Equipment": "321",
                                "Class": null, "ArrivalDate": "01/23/2017", "DepartureDate": "01/23/2017", "DepartureAirport": "PHX",
                                "DepartureTime": "01:45", "ArrivalAirport": "ORD", "ArrivalTime": "06:02", "TravelTime": "0317",
                                "NumberOfStops": null, "StopsLabel": null, "Cabin": null, "AvailabilityContext": null, "$$hashKey": "object:488"
                            },
                                {
                                    "OriginFilter": true, "ReturnFilter": false, "Show": true, "SegmentType": null, "CarrierCode": "AA",
                                    "OpCarrierCode": "AA", "FlightNumber": "2351", "Equipment": "738", "Class": null, "ArrivalDate": "01/23/2017",
                                    "DepartureDate": "01/23/2017", "DepartureAirport": "ORD", "DepartureTime": "15:00", "ArrivalAirport": "MCO",
                                    "ArrivalTime": "18:38", "TravelTime": "0238", "NumberOfStops": null, "StopsLabel": null, "Cabin": null,
                                    "AvailabilityContext": null, "$$hashKey": "object:489"
                                }],
                            "FlightElapseTime": "14:53", "OutboundElapseTime": null, "InboundElapseTime": null, "ReturnOptionCount": 11,
                            "ReturnOptions": [{ "Id": "1", "SortOrder": 0, "Description": "Flt# 2388(AA) MCO->ORD Flt# 1908(AA) ORD->PHX ", "PlusPrice": 0, "TotalPrice": 401.2, "$$hashKey": "object:492" }, { "Id": "16", "SortOrder": 0, "Description": "Flt# 998(AA) MCO->LAX Flt# 491(AA) LAX->PHX ", "PlusPrice": 21, "TotalPrice": 422.2, "$$hashKey": "object:493" }, { "Id": "11", "SortOrder": 0, "Description": "Flt# 2505(AA) MCO->DFW Flt# 513(AA) DFW->PHX ", "PlusPrice": 59, "TotalPrice": 460.2, "$$hashKey": "object:494" }, { "Id": "23", "SortOrder": 0, "Description": "Flt# 425(AA) MCO->DFW Flt# 542(AA) DFW->PHX ", "PlusPrice": 59, "TotalPrice": 460.2, "$$hashKey": "object:495" }, { "Id": "14", "SortOrder": 0, "Description": "Flt# 1289(AA) MCO->DFW Flt# 542(AA) DFW->PHX ", "PlusPrice": 59, "TotalPrice": 460.2, "$$hashKey": "object:496" }, { "Id": "32", "SortOrder": 0, "Description": "Flt# 127(AA) MCO->DFW Flt# 542(AA) DFW->PHX ", "PlusPrice": 59, "TotalPrice": 460.2, "$$hashKey": "object:497" }, { "Id": "17", "SortOrder": 0, "Description": "Flt# 2505(AA) MCO->DFW Flt# 889(AA) DFW->PHX ", "PlusPrice": 59, "TotalPrice": 460.2, "$$hashKey": "object:498" }, { "Id": "19", "SortOrder": 0, "Description": "Flt# 425(AA) MCO->DFW Flt# 575(AA) DFW->PHX ", "PlusPrice": 59, "TotalPrice": 460.2, "$$hashKey": "object:499" }, { "Id": "12", "SortOrder": 0, "Description": "Flt# 2351(AA) MCO->DFW Flt# 889(AA) DFW->PHX ", "PlusPrice": 59, "TotalPrice": 460.2, "$$hashKey": "object:500" }, { "Id": "33", "SortOrder": 0, "Description": "Flt# 425(AA) MCO->DFW Flt# 549(AA) DFW->PHX ", "PlusPrice": 59, "TotalPrice": 460.2, "$$hashKey": "object:501" }, {
                                "Id": "34", "SortOrder": 0, "Description": "Flt# 1289(AA) MCO->DFW Flt# 549(AA) DFW->PHX ", "PlusPrice": 59, "TotalPrice": 460.2, "$$hashKey": "object:502"
                            }], "$$hashKey": "object:47"
                        }, {
                            "MultiCarrier": false,
                            "Id": "O1",
                            "IsRefundable": false,
                            "PaxFareDetails": null,
                            "TotalFareAmount": 401.2,
                            "TotalTaxAmount": 70.04,
                            "TotalMaxFareAmount": 0,
                            "FlightType": 0,
                            "OriginFilter": true,
                            "ReturnFilter": false,
                            "Show": true,
                            "MarketingCarriers": ["American Airlines", "American Airlines"],
                            "MarkeOperatingCarriers": ["American Airlines", "American Airlines"],
                            "Class": null,
                            "OriginAirport": "MCO",
                            "DestinationAirport": "PHX",
                            "Segments": [{
                                "OriginFilter": true, "ReturnFilter": false, "Show": true,
                                "SegmentType": null, "CarrierCode": "AA", "OpCarrierCode": "AA", "FlightNumber": "885", "Equipment": "321",
                                "Class": null, "ArrivalDate": "01/23/2017", "DepartureDate": "01/23/2017", "DepartureAirport": "MCO",
                                "DepartureTime": "01:45", "ArrivalAirport": "ORD", "ArrivalTime": "06:02", "TravelTime": "0317",
                                "NumberOfStops": null, "StopsLabel": null, "Cabin": null, "AvailabilityContext": null, "$$hashKey": "object:488"
                            },
                                {
                                    "OriginFilter": true, "ReturnFilter": false, "Show": true, "SegmentType": null, "CarrierCode": "AA",
                                    "OpCarrierCode": "AA", "FlightNumber": "2351", "Equipment": "738", "Class": null, "ArrivalDate": "01/23/2017",
                                    "DepartureDate": "01/23/2017", "DepartureAirport": "ORD", "DepartureTime": "15:00", "ArrivalAirport": "PHX",
                                    "ArrivalTime": "18:38", "TravelTime": "0238", "NumberOfStops": null, "StopsLabel": null, "Cabin": null,
                                    "AvailabilityContext": null, "$$hashKey": "object:489"
                                }],
                            "FlightElapseTime": "14:53", "OutboundElapseTime": null, "InboundElapseTime": null, "ReturnOptionCount": 11,
                            "ReturnOptions": [{ "Id": "1", "SortOrder": 0, "Description": "Flt# 2388(AA) MCO->ORD Flt# 1908(AA) ORD->PHX ", "PlusPrice": 0, "TotalPrice": 401.2, "$$hashKey": "object:492" }, { "Id": "16", "SortOrder": 0, "Description": "Flt# 998(AA) MCO->LAX Flt# 491(AA) LAX->PHX ", "PlusPrice": 21, "TotalPrice": 422.2, "$$hashKey": "object:493" }, { "Id": "11", "SortOrder": 0, "Description": "Flt# 2505(AA) MCO->DFW Flt# 513(AA) DFW->PHX ", "PlusPrice": 59, "TotalPrice": 460.2, "$$hashKey": "object:494" }, { "Id": "23", "SortOrder": 0, "Description": "Flt# 425(AA) MCO->DFW Flt# 542(AA) DFW->PHX ", "PlusPrice": 59, "TotalPrice": 460.2, "$$hashKey": "object:495" }, { "Id": "14", "SortOrder": 0, "Description": "Flt# 1289(AA) MCO->DFW Flt# 542(AA) DFW->PHX ", "PlusPrice": 59, "TotalPrice": 460.2, "$$hashKey": "object:496" }, { "Id": "32", "SortOrder": 0, "Description": "Flt# 127(AA) MCO->DFW Flt# 542(AA) DFW->PHX ", "PlusPrice": 59, "TotalPrice": 460.2, "$$hashKey": "object:497" }, { "Id": "17", "SortOrder": 0, "Description": "Flt# 2505(AA) MCO->DFW Flt# 889(AA) DFW->PHX ", "PlusPrice": 59, "TotalPrice": 460.2, "$$hashKey": "object:498" }, { "Id": "19", "SortOrder": 0, "Description": "Flt# 425(AA) MCO->DFW Flt# 575(AA) DFW->PHX ", "PlusPrice": 59, "TotalPrice": 460.2, "$$hashKey": "object:499" }, { "Id": "12", "SortOrder": 0, "Description": "Flt# 2351(AA) MCO->DFW Flt# 889(AA) DFW->PHX ", "PlusPrice": 59, "TotalPrice": 460.2, "$$hashKey": "object:500" }, { "Id": "33", "SortOrder": 0, "Description": "Flt# 425(AA) MCO->DFW Flt# 549(AA) DFW->PHX ", "PlusPrice": 59, "TotalPrice": 460.2, "$$hashKey": "object:501" }, {
                                "Id": "34", "SortOrder": 0, "Description": "Flt# 1289(AA) PHX->DFW Flt# 549(AA) DFW->PHX ", "PlusPrice": 59, "TotalPrice": 460.2, "$$hashKey": "object:502"
                            }], "$$hashKey": "object:47"
                        }], "travelerTypes": [], "paxTypes": { "Adult": "1", "Child": "0", "Infant": "0" }, "searchType": "RoundTrip"
                    };
                }
            };

        return apFactory;
    }
})();