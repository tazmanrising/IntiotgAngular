(function () {
    'use strict';

/// ===== service service =================
    angular
        .module('airApp')
        .service('airConfirmationService', function ($http) {

            this.getTestData = function () {
                return $http({
                    url: '../apps/temp/Api_Responses/confirmation.booking.json',
                    method: "GET"
                });
            }

        });

    /// ======  service factory  below  ===================

    angular
        .module('airApp')
        .factory('airConfirmationServiceFactory', airConfirmationServiceFactory);

    airConfirmationServiceFactory.$inject = ['$http', 'currentSession'];

    function airConfirmationServiceFactory($http, currentSession) {
        var session = currentSession;

        //var confirm = [];

        //$http.get('../apps/temp/Api_Responses/confirm.booking.json')
        //    .then(function (result) {
        //        confirm = result.data.flightData; // change flightData to  flights for other file
        //        console.dir(confirm);
        //    },
        //    function (error) {
        //        console.log(error);
        //    });

        //confirm.getTestData = function () {
        //    return confirm;
        //}


        /*Object to return JSON data to controllers*/
        var confirm = {};

        confirm.getBooking = function (id) {
            var response = {};

            var request = {
                MemberId: session.identity.ice_member_id,
                AirBookingId: id
            };

            var promise = $http.post("/svc/air/v1/getbooking", request, {
                headers: {
                    'X-OVSAPIKEY': session.current_api_key
                }
            });

            promise.success(function (resp) {
                // TODO: append CarrierName to response
            });

            return promise;
        }

        confirm.getTestData = function () {
            return {
                "flightData": [
                  {
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
                      "Segments": [
                        {
                            "OriginFilter": true,
                            "ReturnFilter": false,
                            "Show": true,
                            "SegmentType": null,
                            "CarrierCode": "AA",
                            "OpCarrierCode": "AA",
                            "FlightNumber": "885",
                            "Equipment": "321",
                            "Class": null,
                            "ArrivalDate": "01/23/2017",
                            "DepartureDate": "01/23/2017",
                            "DepartureAirport": "PHX",
                            "DepartureCity": "Phoenix",
                            "DepartureState": "AZ",
                            "DepartureTime": "01:45",
                            "ArrivalAirport": "ORD",
                            "ArrivalCity": "Chicago",
                            "ArrivalState": "IL",
                            "ArrivalTime": "06:02",
                            "TravelTime": "0317",
                            "NumberOfStops": null,
                            "StopsLabel": null,
                            "Cabin": null,
                            "AvailabilityContext": null,
                            "$$hashKey": "object:488"
                        },
                        {
                            "OriginFilter": true,
                            "ReturnFilter": false,
                            "Show": true,
                            "SegmentType": null,
                            "CarrierCode": "AA",
                            "OpCarrierCode": "AA",
                            "FlightNumber": "2351",
                            "Equipment": "738",
                            "Class": null,
                            "ArrivalDate": "01/23/2017",
                            "DepartureDate": "01/23/2017",
                            "DepartureAirport": "ORD",
                            "DepartureCity": "Chicago",
                            "DepartureState": "IL",
                            "DepartureTime": "15:00",
                            "ArrivalAirport": "MCO",
                            "ArrivalCity": "Orlando",
                            "ArrivalState": "FL",
                            "ArrivalTime": "18:38",
                            "TravelTime": "0238",
                            "NumberOfStops": null,
                            "StopsLabel": null,
                            "Cabin": null,
                            "AvailabilityContext": null,
                            "$$hashKey": "object:489"
                        }
                      ],
                      "FlightElapseTime": "1453",
                      "OutboundElapseTime": null,
                      "InboundElapseTime": null,
                      "ReturnOptionCount": 1,
                      "ReturnOptions": [
                        {
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
                            "Segments": [
                              {
                                  "OriginFilter": true,
                                  "ReturnFilter": false,
                                  "Show": true,
                                  "SegmentType": null,
                                  "CarrierCode": "AA",
                                  "OpCarrierCode": "AA",
                                  "FlightNumber": "885",
                                  "Equipment": "321",
                                  "Class": null,
                                  "ArrivalDate": "01/23/2017",
                                  "DepartureDate": "01/23/2017",
                                  "DepartureAirport": "MCO",
                                  "DepartureCity": "Orlando",
                                  "DepartureState": "FL",
                                  "DepartureTime": "01:45",
                                  "ArrivalAirport": "ORD",
                                  "ArrivalCity": "Chicago",
                                  "ArrivalState": "IL",
                                  "ArrivalTime": "06:02",
                                  "TravelTime": "0317",
                                  "NumberOfStops": null,
                                  "StopsLabel": null,
                                  "Cabin": null,
                                  "AvailabilityContext": null,
                                  "$$hashKey": "object:488"
                              },
                              {
                                  "OriginFilter": true,
                                  "ReturnFilter": false,
                                  "Show": true,
                                  "SegmentType": null,
                                  "CarrierCode": "AA",
                                  "OpCarrierCode": "AA",
                                  "FlightNumber": "2351",
                                  "Equipment": "738",
                                  "Class": null,
                                  "ArrivalDate": "01/23/2017",
                                  "DepartureDate": "01/23/2017",
                                  "DepartureAirport": "ORD",
                                  "DepartureCity": "Chicago",
                                  "DepartureState": "IL",
                                  "DepartureTime": "15:00",
                                  "ArrivalAirport": "PHX",
                                  "ArrivalCity": "Phoenix",
                                  "ArrivalState": "AZ",
                                  "ArrivalTime": "18:38",
                                  "TravelTime": "0238",
                                  "NumberOfStops": null,
                                  "StopsLabel": null,
                                  "Cabin": null,
                                  "AvailabilityContext": null,
                                  "$$hashKey": "object:489"
                              }
                            ],
                            "FlightElapseTime": "1453",
                            "OutboundElapseTime": null,
                            "InboundElapseTime": null
                        }
                      ],
                      "$$hashKey": "object:47"
                  },
                  {
                      "MultiCarrier": false,
                      "Id": "O2",
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
                      "Segments": [
                        {
                            "OriginFilter": true,
                            "ReturnFilter": false,
                            "Show": true,
                            "SegmentType": null,
                            "CarrierCode": "AA",
                            "OpCarrierCode": "AA",
                            "FlightNumber": "885",
                            "Equipment": "321",
                            "Class": null,
                            "ArrivalDate": "01/23/2017",
                            "DepartureDate": "01/23/2017",
                            "DepartureAirport": "MCO",
                            "DepartureCity": "Orlando",
                            "DepartureState": "FL",
                            "DepartureTime": "01:45",
                            "ArrivalAirport": "ORD",
                            "ArrivalCity": "Chicago",
                            "ArrivalState": "IL",
                            "ArrivalTime": "06:02",
                            "TravelTime": "0317",
                            "NumberOfStops": null,
                            "StopsLabel": null,
                            "Cabin": null,
                            "AvailabilityContext": null,
                            "$$hashKey": "object:488"
                        },
                        {
                            "OriginFilter": true,
                            "ReturnFilter": false,
                            "Show": true,
                            "SegmentType": null,
                            "CarrierCode": "AA",
                            "OpCarrierCode": "AA",
                            "FlightNumber": "2351",
                            "Equipment": "738",
                            "Class": null,
                            "ArrivalDate": "01/23/2017",
                            "DepartureDate": "01/23/2017",
                            "DepartureAirport": "ORD",
                            "DepartureCity": "Chicago",
                            "DepartureState": "IL",
                            "DepartureTime": "15:00",
                            "ArrivalAirport": "PHX",
                            "ArrivalCity": "Phoenix",
                            "ArrivalState": "AZ",
                            "ArrivalTime": "18:38",
                            "TravelTime": "0238",
                            "NumberOfStops": null,
                            "StopsLabel": null,
                            "Cabin": null,
                            "AvailabilityContext": null,
                            "$$hashKey": "object:489"
                        }
                      ],
                      "FlightElapseTime": "1453",
                      "OutboundElapseTime": null,
                      "InboundElapseTime": null
                  }
                ],
                "travelers": [
                  {
                      "travelerType": "Adult",
                      "travelerTypeId": 0,
                      "firstName": "Tony",
                      "middleName": "",
                      "lastName": "Smith",
                      "gender": "M",
                      "birthDate": {
                          "month": "Jan",
                          "day": "1",
                          "year": "1989"
                      },
                      "freqFlyerProgram": "Adria Miles & More",
                      "freqFlyerNumber": "123",
                      "knownTravelerNumber": "123",
                      "knownTravelerProgram": "Global Entry",
                      "tsaRedressNumber": "123",
                      "specialAssistance": "Blind with Guide Dog",
                      "seatPreference": "Window"
                  },
                  {
                      "travelerType": "Child",
                      "travelerTypeId": 1,
                      "firstName": "Child",
                      "middleName": "T",
                      "lastName": "LastName",
                      "gender": "F",
                      "birthDate": {
                          "month": "Jan",
                          "day": "1",
                          "year": "2010"
                      },
                      "freqFlyerProgram": "Adria Miles & More",
                      "freqFlyerNumber": "123",
                      "knownTravelerNumber": "123",
                      "knownTravelerProgram": "Global Entry",
                      "tsaRedressNumber": "123",
                      "specialAssistance": "",
                      "seatPreference": "Asile"
                  }
                ],
                "payment": {
                    "travelers": [
                      {
                          "label": "Tony Smith",
                          "totalFare": 801.2,
                          "totalTax": 70.04,
                          "totalPerPassenger": 871.24
                      },
                      {
                          "label": "Debbie Smith",
                          "totalFare": 401.2,
                          "totalTax": 70.04,
                          "totalPerPassenger": 471.24
                      }
                    ],
                    "disclaimer": "All prices quoted in <strong>US Dollars</strong>.",
                    "bookingFee": 100,
                    "total": 971.24
                },
                "searchType": "RoundTrip",
                "confirmationNumber": "XYZ-123ABC"
            };
        };

        return confirm;
    }    
})();