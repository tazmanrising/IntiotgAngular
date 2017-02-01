(function () {
    'use strict';

    angular
        .module('airApp')
        .factory('airBookService', airBookService);

    airBookService.$inject = ['$http', '$q', '$timeout', 'currentSession', 'searchStateFactory', 'confirmationFactory'];

    function airBookService($http, $q, $timeout, currentSession, searchStateFactory, confirmationFactory) {

        var returnedBook = {}, // Object to return JSON data to controllers
            _partnersToCheck = ['sears'],
            session = currentSession;

        returnedBook.test = true; // string to unit test basic connection from service to controller
        returnedBook.responseData = {}; // Object to hold returned booking data from the post call
        
        //console.log('session', JSON.stringify(session));

        // Returns a promise
        returnedBook.book = function (trip) {
            var usr = session.identity;
            var request = {
                BookingRequest: trip.bookingRequest,
                ClassId: usr.ice_member_class_id,
                ConfirmEmail: trip.confirmEmail,
                InvoiceEmail: trip.invoiceEmail,
                MemberId: usr.ice_member_id,
                NameId: usr.ice_name_id,
                PartnerId: usr.ice_partner_id
            };

            return bookTrip(request);
        };

        returnedBook.getBooking = function () {
            return {
                bookingRequest: {
                    "MktCarrierCode": "DL",
                    "CreditCardInfo": {
                        "CardExpMonth": 5,
                        "CardExpYear": 2018,
                        "CardNumber": "1111222233334444",
                        "CardSecurityCode": "345",
                        "CardVendor": "VI",
                        "NameOnCard": "Paul Vanukoff"
                    },
                    "ExpectedFareAmount": 444.44,
                    "Itineraries": [
                        {
                            "Segments": [
                                {
                                    "MktCarrierCode": "DL",
                                    "DepartureAirport": "PHX",
                                    "DepartureDateTime": "2017-03-03",
                                    "ArrivalAirport": "ORD"
                                },
                                {
                                    "MktCarrierCode": "DL",
                                    "DepartureAirport": "ORD",
                                    "DepartureDateTime": "2017-03-03",
                                    "ArrivalAirport": "MCO"
                                }
                            ]
                        },
                        {
                            "Segments": [
                                {
                                    "MktCarrierCode": "DL",
                                    "DepartureAirport": "MCO",
                                    "DepartureDateTime": "2017-03-09",
                                    "ArrivalAirport": "PHX"
                                }
                            ]
                        }
                    ],
                    "Passengers": [
                        {
                            "DOB": "1976-09-06",
                            "FirstName": "Paul",
                            "LastName": "Vanukoff",
                            "Gender": "M",
                            "Kind": "Adult"
                        }
                    ]
                },
                invoiceEmail: "paul.vanukoff@iceenterprise.com",
                confirmEmail: "paul.vanukoff@iceenterprise.com"
            };
        };

        returnedBook.formatDuration = function (duration) {
            return duration.slice(0, 2) + "h : " + duration.slice(2, 4) + "m";
        };

        returnedBook.getCcMonths = function () {
            return [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
        };

        returnedBook.getCcYears = function (currentYear, numOfYrs) {
            var resp = [];

            //set the credit card expiration years in the dropdown to 20 years.
            for (var i = 0; i < numOfYrs; i++) {
                resp.push(currentYear + i);
            };

            return resp;
        };

        returnedBook.getCcTypes = function () {
            return {
                data: getPaymentMethods(),
                dataTextField: "Name",
                dataValueField: "Id",
                valuePrimitive: true
            };
        };

        returnedBook.getCcVendorTypes = function () {
            var ccTypes = session.credit_cards_accepted || [];

            var ccList = [];

            for (var i = 0, t = ccTypes.length; i < t; i++) {
                var cc = ccTypes[i];

                ccList.push({
                    text: cc.credit_card_name,
                    value: cc.card_type
                });
            }

            return ccList;
        };

        returnedBook.getContactInformation = function () {
            var partnerName = session.display_options.program_long_name;
            var regex = new RegExp('\\[partnername\\]', 'gi');

            // Ex: "I/We expressly consent to receiving relevant information and product offers relating to my [PARTNERNAME] membership on my cellular telephone numbers(s) provided above using automated telephone dialing technology or via text message.  Consent is not required to make a purchase of any goods or services from [PARTNERNAME] and my consent may be revoked at any time.  Message & data rates may apply.";
            var tcpa = session.display_options.options.tcpa_optin_text;

            var tcpaOptInText = tcpa.replace(regex, partnerName);

            return {
                country: {
                },
                phoneNumber: "",
                emailPrimary: "",
                emailItinerary: "",
                tcpaOptIn: false,
                tcpaOptInText: tcpaOptInText
            };
        };

        returnedBook.getFlightSummary = function (flight) {
            //console.log('flight', flight);
            var trip = {};

            if (flight !== undefined) {


                var legs = flight.Segments.length,
                        isMultipleLegs = (legs > 1),
                    lastLeg = legs - 1,
                    numberOfStops = (lastLeg === 0) ? "NONSTOP" : (lastLeg === 1) ? lastLeg + " stop" : lastLeg + " stops",
                    stops = [];

                // set default value
                var carrier = {
                    logo: '/apps/assets/imgs/air/carriers/aasmall.png', // This needs to generate dynamically
                    name: flight.MarketingCarriers[0]
                };

                // #TODO: Use generic carrier icon if multiple Marketing carriers
                // Rule: 
                //if (flight.MarketingCarriers.length > 1) {

                //}

                if (isMultipleLegs) {
                    angular.forEach(flight.Segments, function (segment, idx) {
                        var arrivalDateTime = moment(new Date(segment.ArrivalDate + " " + segment.ArrivalTime));

                        if (flight.Segments[idx + 1]) {
                            var nextItem = flight.Segments[idx + 1];
                            var departDateTime = moment(new Date(nextItem.DepartureDate + " " + nextItem.DepartureTime));
                            var ms = moment(departDateTime).diff(moment(arrivalDateTime));
                            var d = moment.duration(ms);
                            var layoverHours = d.hours() > 0 ? d.hours() + "h " : "";
                            var layoverMinutes = d.minutes() > 0 ? d.minutes() + "m" : "";
                            var layovertime = layoverHours + layoverMinutes;

                            var _leg = {
                                airport: segment.ArrivalAirport,
                                duration: layovertime
                            };

                            stops.push(_leg);
                        }
                    });

                    //console.log('stops', stops);
                }

                var _arrivalDate = moment(new Date(flight.Segments[lastLeg].ArrivalDate)).format("ddd, MMM DD");
                var _departDate = moment(new Date(flight.Segments[0].DepartureDate)).format("ddd, MMM DD");
                var _multipleDays = !moment(new Date(_arrivalDate)).isSame(new Date(_departDate));

                trip = {
                    arrivalAirport: flight.DestinationAirport,
                    arrivalTime: formatTime(flight.Segments[lastLeg].ArrivalTime, "ampm"),
                    arrivalDate: _arrivalDate,

                    departingAirport: flight.OriginAirport,
                    departureTime: formatTime(flight.Segments[0].DepartureTime, "ampm"),
                    departureDate: _departDate,

                    carrier: carrier,
                    multipleDays: _multipleDays,
                    flightNumber: flight.Segments[0].FlightNumber,
                    numberOfStops: numberOfStops,
                    stops: stops,
                    totalPrice: flight.TotalFareAmount,
                    travelTime: formatTime(flight.FlightElapseTime, "dhm"),
                    type: flight.FlightType === 0 ? "roundtrip" : "one-way"
                };
            }

            //console.log('trip', trip);

            return trip;
        };

        returnedBook.getKnownTravelerList = function () {
            return ["Global Entry", "SENTRI", "NEXUS", "TSA Pre-Check"];
        };

        returnedBook.getLabels = function () {
            var labels = session.display_options.labels;
            return {
                contact: {
                    country: labels.country,
                    phone: labels.phone_number,
                    email: labels.email_address,
                    emailItinerary: labels.email_address_itinerary
                }
            }
        };

        returnedBook.getSeatPreferenceList = function () {
            // #TODO: Make this a DisplayOptions variable that is passed in dynamically (per locale)
            return ["Window", "Aisle"];
            //{ message: "Seat selections are requested from the airline, but <strong> cannot be guaranteed</strong>." };
        };

        returnedBook.getSpecialAssistanceList = function () {
            return ["Blind with Guide Dog", "Deaf with Guide Dog", "Wheelchair - Cannot Ascend/Decend Stairs", "Wheelchair - Can walk and Ascend/Decend Stairs"];
        };

        returnedBook.getSearchObject = function () {
            var dummy = {
                "searchType": "RoundTrip",
                "origin": "PHX",
                "destination": "MCO",
                "departureDate": "2017-02-01T23:42:04.852Z",
                "returnDate": "2017-02-08T23:42:04.856Z",
                "paxTypes": {
                    "Adult": "1", "Child": "0", "Infant": "0"
                }
            };

            //return searchStateFactory.getSearch() || dummy;
            return dummy;
        };

        returnedBook.getTermsAndConditions = function () {
            var terms = session.display_options.options;

            return {
                nonrefundableFees: true,
                cancellationPolicy: terms.air_cancellation_policy,
                liabilityLimitations: terms.air_liability_limitations,
                fareRules: ["Fare Rule 1", "Fare Rule 2"], // TODO: API call
                baggageCharge: "Baggage Charges and Allowances which will be a call to get the exact info by the airlines booked - (NEED DISCUSSION ON BEST WAY TO ACCOMPLISH) we need this to be a dynamic call from GDS to ensure we are not maintaining a data collection of info"
            }
        };

        returnedBook.getPersonalInfo = function () {
            var member = session.member_info,
                purchase = {
                    confirmEmails: [],
                    firstName: member.first_name,
                    lastName: member.last_name,
                    cardName: member.first_name + " " + member.last_name,
                    cardFirstName: member.first_name,
                    cardLastName: member.last_name,
                    billingZip: null
                };
            //console.log('member', member);

            if (member.addresses) {
                for (var j = 0, tot = member.addresses.length; j < tot; j++) {
                    if (isTrue(member.addresses[j].is_primary)) {
                        purchase.street1 = member.addresses[j].street1;
                        purchase.street2 = member.addresses[j].street2;
                        purchase.street3 = member.addresses[j].street3;
                        purchase.city = member.addresses[j].city;
                        purchase.state_province = member.addresses[j].state_province;
                        purchase.postal_code = member.addresses[j].postal_code;
                        purchase.country = member.addresses[j].country;
                        purchase.state_code = member.addresses[j].state_code;
                        purchase.country_code = member.addresses[j].country_code;

                        purchase.billingStreet1 = purchase.street1;
                        purchase.billingStreet2 = purchase.street2;
                        purchase.billingCity = purchase.city;
                        purchase.billingState_province = purchase.state_province;
                        purchase.billingZip = purchase.postal_code;
                        purchase.billingCountry = purchase.country;
                        break;
                    }
                };
            }

            if (member.email_addresses) {
                for (var k = 0, tot = member.email_addresses.length; k < tot; k++) {
                    if (isTrue(member.email_addresses[k].is_primary)) {
                        purchase.email = member.email_addresses[k].address;
                    };
                };
            }

            if (member.phone_numbers) {
                for (var l = 0, tot = member.phone_numbers.length; l < tot; l++) {
                    if (isTrue(member.phone_numbers[l].IsPrimary)) {
                        purchase.phone = member.phone_numbers[l].Number;
                        purchase.billingPhone = purchase.phone;
                    }
                };
            }

            return purchase;
        };

        // ORIGINAL: Removed 12-21-2016 for testing
        //returnedBook.getPaymentSummary = function (fareDetails, travelerTypes) {
        //    var itms = [];

        //    travelerTypes.forEach(function (traveler) {
        //        var fare = getPaxFareDetails(fareDetails, traveler.code);
        //        fare.label = traveler.label;
        //        itms.push(fare);
        //    });

        //    return itms;
        //};

        returnedBook.getPaymentSummary = function (flights, travelers) {
            var payment = {
                disclaimer: "All prices quoted in <strong>US Dollars</strong>.", // dynamically populate based on locale
                currencySymbol: session.display_options.currency_symbol,
                //bookingFee: 100, // dynamically pull from displayOptions in Azure (move into service file)
                totalFare: 0,
                totalTax: 0,
                totalPerPassenger: 0,
                total: 0
            };

            if (flights.length > 0) {
                // TODO: Need to check against passenger type and set price according to specific airline passenger type policy
                payment.totalFare = flights[0].TotalFareAmount;
                payment.totalTax = flights[0].TotalTaxAmount;
                payment.totalPerPassenger = payment.totalFare + payment.totalTax;
                payment.total = (payment.totalPerPassenger * travelers.length);
            }

            return payment;
        };
        
        returnedBook.setPhoneMask = function (countryId) {
            var _maskFormat = "####################";

            switch (countryId) { //book.contactInfo.country.Id
                case 'US':
                    _maskFormat = "1 000 000 0000";
                    break;
                case 'CA':
                    _maskFormat = "1 000 000 0000";
                    break;
                case 'MX':
                    //This mask has to allow for 2 different formats. 52 ## #### #### - 52 # ### #### #### (all numeric) 
                    _maskFormat = "52 999999 0000 0000";
                    break;
                case 'GB':
                    //This mask has to allow for 2 different formats. 52 ## #### #### - 52 # ### #### #### (all numeric) 
                    _maskFormat = "44 999 999 00009";
                    break;
                case 'NZ':
                    _maskFormat = "64 0 0000 0000";
                    break;
                case 'AU':
                    //This mask has to allow for 2 different formats. 52 ## #### #### - 52 # ### #### #### (all numeric) 
                    _maskFormat = "61 00 0000 0000";
                    break;
            }

            return _maskFormat;
        };
        
        returnedBook.validateCreditCardNumber = function (ccNumber, ptype) {
            if (ccNumber) {
                if (_partnersToCheck.indexOf(ptype) > -1) {
                    //basis for this algorithm can be found here
                    return mod10Validation(ccNumber);
                }
            }

            return false;
        };

        /**************************************/
        /*******  PRIVATE FUNCTION(S)   *******/
        /**************************************/
        function formatTime(timeString, format) {
            var response = "";

            switch (format) {
                case "ampm":
                    var amPm = "a",
                        timeArray = timeString.split(":"),
                        hourDigit = parseInt(timeArray[0]),
                        minuteDigit = timeArray[1];

                    // Midnight
                    if (hourDigit === 0 || hourDigit === 12) {
                        hourDigit = 12;
                    }

                    else if (hourDigit > 12) {
                        amPm = "p";
                        hourDigit = hourDigit - 12;
                    }

                    response = hourDigit + ":" + minuteDigit + amPm;
                    break;
                case "dhm":
                    //timeString = timeString.substr(0, 2) + ":" + timeString.substr(2);
                    var duration = moment.duration(timeString),
                        d = duration.days(),
                        h = duration.hours(),
                        m = duration.minutes();

                    response = (d > 0 ? d + "d " : "") + (h > 0 ? h + "h " : "") + (m > 0 ? m + "m " : "");
                    break;
                default:
                    break;
            }

            return response;
        }

        function getPaymentMethods() {
            var memberCCs = session.member_info.credit_cards_accepted,
                ccItems = [];

            for (var i = 0; i < memberCCs.length; i++) {
                ccItems.push({
                    Name: memberCCs[i].credit_card_name,
                    Id: memberCCs[i].card_type
                });
            }

            return ccItems;
        }

        function getPaxFareDetails(flightFareDetails, fareType) {
            var fareInfo = {
            };

            if (!flightFareDetails) {
                return fareInfo;
            }

            flightFareDetails.forEach(function (fareDetail) {
                if (fareDetail.PassengerType === fareType) {
                    fareInfo = fareDetail;
                }
            });

            // Scaling and descaling by 100 done to prevent rounding errors with floating point precision.
            var totalFare = fareInfo.TotalFareAmount * 100;
            var taxes = fareInfo.TotalTaxAmount * 100;
            var baseFare = totalFare - taxes;

            return {
                "totalFare": parseFloat(totalFare / 100).toFixed(2),
                "totalTaxes": parseFloat(taxes / 100).toFixed(2),
                "baseFare": parseFloat(baseFare / 100).toFixed(2)
            };
        }

        function isTrue(s) {
            return (s === true || s === "true");
        }

        //http://www.codeproject.com/Tips/515367/Validate-credit-card-number-with-Mod-algorithm
        function mod10Validation(ccNumber) {
            ccNumber = ccNumber + ''; // Convert to string
            var weight = 2,
                sum = 0,
                digit,
                cardCount;

            for (var cardCount = parseInt(ccNumber.length) ; cardCount > 1; cardCount--) {
                digit = parseInt((ccNumber.charAt(cardCount - 2)));
                digit = digit * weight;

                /* add tens digit to ones digit to the sum */
                sum = sum + Math.floor(digit / 10) + (digit % 10);
                weight = weight == 2 ? 1 : 2;
            }

            var lastNumber = parseInt((ccNumber.charAt(parseInt(ccNumber.length) - 1)));
            sum += parseInt(lastNumber);

            return sum % 10 === 0 ? true : false;
        }

        function bookTrip(request) {
            // console.log('returnedBook.book() request', JSON.stringify(request));

            var promise = $http.post("/svc/air/v1/book", request, {
                headers: {
                    'X-OVSAPIKEY': session.current_api_key
                }
            });

            promise.success(function (response) {
                console.log("returnedBook.book() success", JSON.stringify(response));
                confirmationFactory.update(response);
            });

            promise.error(function (response, status, headers, config) {
                console.error("Booking failed.", JSON.stringify(response));
                //LogglyLogger.fields({
                //    info: JSON.stringify(data, null, '\t') + status + headers + config
                //});
            });

            return promise;
        }

        return returnedBook;
    }
})();