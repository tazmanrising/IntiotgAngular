(function () {
    "use strict";

    angular
        .module("airApp")
        .controller("airBookController", airBookController);

    airBookController.$inject = [
        "$window", "$scope", "$q", "$location", "$timeout", "$state", "$anchorScroll", "$stateParams",
        "airBookService", "airPassengerFactory", "frequentFlyerProgramFactory", "dialogService",
        "StringService", "searchStateFactory", "bookStateFactory", "airAirportsFactory", "countriesAndStates"
    ];

    function airBookController($window, $scope, $q, $location, $timeout, $state, $anchorScroll, $stateParams,
        airBookService,
        airPaxFactory,
        frequentFlyerProgramFactory,
        dialogService,
        StringService,
        searchStateFactory,
        bookStateFactory,
        airportFactory,
        countriesAndStates) {

        // **** PROPERTY MAPPING **** //
        var book = this;

        // LOCAL VARS //
        var ccPreferredTypeSears = "sears";
        var currMonth = new Date().getMonth();
        var currYear = new Date().getFullYear();
        // LOCAL VARS (END) //

        //book.debug = true; // set to false in prod

        // #TODO: Persist scope (currently not working)
        book.bookData = bookStateFactory || {
        };

        book.countryDataSource = new kendo.data.DataSource({
            data: countriesAndStates.countries,
            dataTextField: "Name",
            dataValueField: "Id",
            valuePrimitive: true
        });

        // #TODO: TESTING PURPOSES; remove in PROD
        book.bookingInfoObject = $stateParams.booking;
        if (StringService.isObjectEmpty(book.bookingInfoObject)) {
            book.bookingInfoObject = airportFactory.getDefaultFlights();
        }

        //book.search = airBookService.getSearchObject();

        book.search = $stateParams.search;
        if (StringService.isObjectEmpty(book.search)) {
            book.search = airBookService.getSearchObject();
        }

        book.label = airBookService.getLabels();

        book.isInternationalFlight = false; // #TODO: scan selected flights and set this value according to flight locations.

        /************************************************************************************/
        /*************************      Public Variables         ****************************/
        /************************************************************************************/

        /******* Contact Information Section *******/
        var contactInfo = airBookService.getContactInformation();
        book.contactInfo = new kendo.data.DataSource(contactInfo);
        book.tcpaOptInText = contactInfo.tcpaOptInText;
        /******* Contact Information Section (end) *******/


        /******* Traveler Information Section *******/
        book.travelerTypes = airPaxFactory.getSearchedPaxAsFares();
        book.travelers = airPaxFactory.getPaxAsTravelerInfo();

        // General block
        book.birthMonthsDataSource = new kendo.data.DataSource({
            data: moment.monthsShort()
        });
        book.birthYearDataSource = {
        };
        book.birthDaysDataSource = new kendo.data.DataSource({
            data: []
        });
        book.ccVendorDataSource = new kendo.data.DataSource({
            data: airBookService.getCcVendorTypes()
        });

        book.genders = [{
            id: "M",
            name: "Male"
        },
        {
            id: "F",
            name: "Female"
        }];

        // Frequent Flyer Program block
        book.freqFlyerProgramDataSource = new kendo.data.DataSource({
            data: frequentFlyerProgramFactory.getFrequentFlyerPrograms()
        });

        // Known Traveler Program block
        book.knownTravelerProgramsDataSource = new kendo.data.DataSource({
            data: airBookService.getKnownTravelerList()
        });

        // TSA Advisory block
        book.tsaAdvisory = "<strong>Please note: </strong>Transportation Security Administration (TSA) Secure Flight regulations require all air travelers to provide their full name as shown on valid government-issued identification, date of birth, and gender to the airline. This information is required to complete your booking and will not be utilized for any purposes other than compliance with TSA requirements.";

        // Special Assistance block
        book.specialAssistanceDataSource = new kendo.data.DataSource({
            data: airBookService.getSpecialAssistanceList()
        });

        // Seat Preference block
        // #TODO: Make this a DisplayOptions variable that is passed in dynamically (per locale)
        book.seatPreferenceMessage = "Seat selections are requested from the airline, but <strong> cannot be guaranteed</strong>.";
        book.seatPreferenceList = airBookService.getSeatPreferenceList();
        /******* Traveler Information Section (end) *******/



        /******* Payment Information Section *******/
        var CcYearsRange = 20;
        book.ccYears = airBookService.getCcYears(currYear, CcYearsRange);
        book.ccMonths = airBookService.getCcMonths();
        book.ccTypesDataSource = new kendo.data.DataSource(airBookService.getCcTypes());
        book.ccPreferredType = "visa";

        // Personal Information
        book.purchase = airBookService.getPersonalInfo();
        //console.log('book.purchase', book.purchase);

        //set dropdown defaults
        book.purchase.expMo = currMonth;
        book.purchase.expYear = currYear;
        /******* Payment Information Section (end) *******/


        /***  Terms and Conditions settings  ***/
        book.termsAgree = false;
        book.terms = airBookService.getTermsAndConditions();
        /***  Terms and Conditions settings (end) ***/



        /******* Payment/Flight Summary Sidebar *******/
        // Create the list of fares to be booked, which is used for the traveler type dropdown,
        // for the payment summary, and for determining how many traveler info objects to initialize. 

        book.departingFlight = airBookService.getFlightSummary(book.bookingInfoObject.selectedFlights[0]) || {};
        book.returningFlight = airBookService.getFlightSummary(book.bookingInfoObject.selectedFlights[1]) || {};

        book.paymentSummaryEntries = [];
        //book.paymentSummaryEntries = airBookService.getPaymentSummary(book.fareDetails, book.travelerTypes);
        //console.log('book.paymentSummaryEntries', book.paymentSummaryEntries);

        // Pull this block into service or factory
        book.payment = airBookService.getPaymentSummary(book.bookingInfoObject.selectedFlights, book.travelers);

        // #TODO: FIX => [PaxFareDetails] property is null (as of 12-20-2016)
        //book.fareDetails = (book.bookingInfoObject.selectedFlights) ? book.bookingInfoObject.selectedFlights[0].PaxFareDetails : [];

        /******* Payment Summary Sidebar *******/


        /***********************************************************************************/
        /*************************      Public Function         ****************************/
        /***********************************************************************************/

        book.getAirportDetails = function (airportCode) {
            return airportFactory.getAirportDetails(airportCode);
        };

        book.formatFlightSummaryDate = function (flightDate, flightTime, airportTimezone) {
            return moment(flightDate + " " + flightTime).format("ddd, MMM D, YYYY [at] h:mm A");
        };

        book.populateBirthyearDropdown = function () {
            var yearWindow = 108;
            var years = [];
            var yearToAdd = parseInt(new Date().getFullYear());
            years.push(yearToAdd);
            for (var i = yearWindow; i > -1; i--) {
                yearToAdd--;
                years.push(yearToAdd)
            }

            book.birthYearDataSource = new kendo.data.DataSource({
                data: years
            });
        };
        
        // TESTING PURPOSES ONLY
        book.populateFields = function () {
            
            // Contact Section
            book.contactInfo.phoneNumber = "11231231234";
            book.contactInfo.emailPrimary = "andrew.monigal@iceenterprise.com";
            book.contactInfo.emailItinerary = "andrew.monigal@iceenterprise.com";
            book.contactInfo.tcpaOptIn = true;

            // Traveler Section
            for (var i = 0, t = book.travelers.length; i < t; i++) {
                var p = book.travelers[i];
                
                p.firstName = randomString(10);
                p.middleName = randomString(5);
                p.lastName = randomString(10);
                
                var months = moment.monthsShort();
                p.birthDate.month = months[randomNumber(0, 11)];
                p.birthDate.day = randomNumber(1, 28);
                p.birthDate.year = randomNumber(1920, 2016);

                p.gender = book.genders[randomNumber(0,book.genders.length - 1)].id;
                
                p.freqFlyerProgram = "Air France Flying Blue";
                p.freqFlyerNumber = "FF" + randomNumber(1000,10000);

                p.knownTravelerProgram = "Global Entry";
                p.knownTravelerNumber = "KTP" + randomNumber(2000, 20000);

                p.tsaRedressNumber = "RD" + randomNumber(3000, 30000);

                p.specialAssistance = "Deaf with Guide Dog";

                var randSeat = randomNumber(0, book.seatPreferenceList.length - 1);
                p.seatPreference = book.seatPreferenceList[randSeat];
            }

            // Payment Section
            book.purchase.ccNumber = "4111111111111111";
            book.purchase.ccSecCode = randomNumber(100, 999);
            book.purchase.expMo = randomNumber(1, 12);
            book.purchase.expYear = randomNumber(2018, 2025);

            // Terms and Conditions Section
            book.termsAgree = true;
        };


        // Will need for both "Contact Info" and "Payment" sections
        book.setInitialCountry = function () {
            //sets the initial country to USA if it is missing country data.
            if (!book.contactInfo.country) {
                book.contactInfo.country = countriesAndStates.countries[0];
            }
            //if (!book.purchase.billingCountry) {
            //    book.purchase.billingCountry = countriesAndStates.countries[0];
            //}

            //attempting to load before Kendo and is causing errors. Hence add timeout for delay
            $timeout(function () {
                book.phoneNumber.setOptions({
                    mask: airBookService.setPhoneMask(book.contactInfo.country.Id)
                });
                //setPhoneMask();
            }, 500);
        };

        // initialize property value
        book.setCountry = function () {
            if (!book.contactInfo.country) {
                book.contactInfo.country = countriesAndStates.countries[0];
            };

            book.phoneNumber.setOptions({
                mask: airBookService.setPhoneMask(book.contactInfo.country.Id)
            });
            //setPhoneMask(book.contactInfo.country.Id);
        };

        book.getStates = function () {
            if (!book.purchase.billingCountry.Id) {
                book.purchase.billingCountry.Id = book.purchase.country;
            };

            setStates();
        };

        book.updateBirthDaysDataSource = function (month) {
            var tmpMonth = month || 0;
            book.birthDaysDataSource.data(book.getDaysForMonth(tmpMonth));
        };

        book.updateAvailableCcYears = function () {
            var yearList = [];
            var month = currMonth + 1;

            if (book.purchase.expMo < month) {
                yearList = airBookService.getCcYears(currYear + 1, CcYearsRange);
            } else {
                yearList = airBookService.getCcYears(currYear, CcYearsRange);
            }

            book.ccYears = yearList;
        };

        book.getDaysForMonth = function (selectedMonth) {
            var daysInMonth = moment().month(selectedMonth).year(2016).daysInMonth();
            var dayToAdd = 1;
            var daysArray = [];

            while (dayToAdd <= daysInMonth) {
                daysArray.push(dayToAdd)
                dayToAdd++;
            }

            return daysArray;
        };

        book.returnUrl = function () {
            // go to previous page
            $state.go("searchresults");
        };

        // ** VALIDATION HANDLERS *** //
        book.validationRules = {
            badccnumber: function (input) {
                if (input[0].name === "credit_card_number" && input.val() !== "") {
                    var y = input.val().replace(/\D/g, "");
                    var x = luhnChk(y);
                    if (x === false) {
                        return false;
                    }
                };
                if (input[0].name === "credit_card_type") {
                    if (book.ccPreferredType === "amex") {
                        book.security_code.setOptions({
                            mask: "0000"
                        });
                    } else {
                        book.security_code.setOptions({
                            mask: "000"
                        });
                    }
                };

                return true;
            }
        };
        book.validateNumber = function () {
            return airBookService.validateCreditCardNumber(book.purchase.ccNumber, book.ccPreferredType);
        };
        book.captureCC = function (ccInfo) {
            if (book.purchase.ccNumber) {
                if (book.ccPreferredType === ccPreferredTypeSears) {
                    book.validateNumber();
                };
            }

            // #TODO: var "ccInfo" is a single string value. How can it have properties?? 
            // This was pulled directly from Hotel code.
            book.ccPromo = ccInfo.promo_message;
            book.purchase.ccName = ccInfo.credit_card_name;
        };


        // *** ACTION HANDLERS *** //
        // Returns a promise
        book.submit = function () {
            var deferred = $q.defer();
            deferred.notify('About to book flight..');

            // Extracted from hotel > book.validate() function
            if (book.validator.validate()) {
                if (validateDateOfBirth()) {
                    var segments = [],
                        itineraries = [],
                        passengers = [],
                        flights = book.bookingInfoObject,
                        travelers = book.travelers,
                        payment = book.purchase;

                    // CC Information
                    var ccInfo = {
                        CardExpMonth: payment.expMo,
                        CardExpYear: payment.expYear,
                        CardNumber: payment.ccNumber,
                        CardSecurityCode: payment.ccSecCode,
                        CardVendor: book.ccPreferredType,
                        NameOnCard: payment.cardName
                    };

                    // Depart Flight
                    var departFlight = flights.selectedFlights[0];
                    var mktCarrier = departFlight.MarketingCarriers[0];
                    for (var i = 0, t = departFlight.Segments.length; i < t; i++) {
                        var _segment = departFlight.Segments[i];
                        segments.push({
                            ArrivalAirport: _segment.ArrivalAirport,
                            AvailabilityContext: _segment.AvailabilityContext,
                            Class: _segment.Class,
                            DepartureAirport: _segment.DepartureAirport,
                            DepartureDateTime: moment(new Date(_segment.DepartureDate + " " + _segment.DepartureTime)),
                            FlightNumber: _segment.FlightNumber,
                            MktCarrierCode: _segment.CarrierCode,
                        });
                    }
                    itineraries.push(segments);

                    // Return Flight
                    var returnFlight = flights.selectedFlights[1];
                    if (returnFlight) {
                        for (var i = 0, t = returnFlight.Segments.length; i < t; i++) {
                            var _segment = returnFlight.Segments[i];
                            segments.push({
                                ArrivalAirport: _segment.ArrivalAirport,
                                AvailabilityContext: _segment.AvailabilityContext,
                                Class: _segment.Class,
                                DepartureAirport: _segment.DepartureAirport,
                                DepartureDateTime: moment(new Date(_segment.DepartureDate + " " + _segment.DepartureTime)),
                                FlightNumber: _segment.FlightNumber,
                                MktCarrierCode: _segment.CarrierCode,
                            });
                        }
                    }

                    // Passenger Information
                    for (var i = 0, t = travelers.length; i < t; i++) {
                        var traveler = travelers[i],
                            seats = [];

                        passengers.push({
                            Infant: null,
                            DOB: traveler.birthDate,
                            FFP: traveler.frequentFlyerNumber,
                            FirstName: traveler.FirstName,
                            Gender: traveler.gender,
                            Kind: traveler.travelerType,
                            KTPNumber: traveler.knownTravelerNumber,
                            LastName: traveler.lastName,
                            TSARedress: traveler.tsaRedressNumber,
                            RequestedSeats: seats.push(traveler.seatPreference)
                        });
                    }

                    // Set Booking Object
                    var bookingRequest = {
                        CreditCardInfo: ccInfo,
                        ExpectedFareAmount: book.bookingInfoObject.TotalFareAmount,
                        Itineraries: itineraries,
                        MktCarrierCode: mktCarrier,
                        Passengers: passengers
                    };

                    book.bookData = {
                        bookingRequest: bookingRequest,
                        invoiceEmail: book.contactInfo.emailPrimary,
                        confirmEmail: book.contactInfo.emailItinerary
                    };
                    console.log('book.bookData', book.bookData);

                    //return processBooking(book.bookData);
                }
                else {
                    DisplayErrorMessage("Birthday", "One of the birthday entries is invalid.");
                    deferred.reject("Birthday", "Fields with highlighted text below them require corrections.");
                }
            }
            else {
                DisplayErrorMessage('Yikes!', 'Something doesnt look right. Can you re-check for missing information and try again.');
                deferred.reject('Yikes!', 'Something doesnt look right. Can you re-check for missing information and try again.');
            }

            $anchorScroll();
            return deferred.promise;
        };

        book.skipToConfirmationPage = function () {
            return processBooking(airBookService.getBooking());
        };

        /**************************************************/
        /*************  PRIVATE FUNCTIONS  ****************/
        /**************************************************/
        // #TODO: Refactor these functions into services, factories, directives, etc.

        var luhnChk = (function (arr) {
            return function (ccNum) {
                var
                    len = ccNum.length,
                    bit = 1,
                    sum = 0,
                    val;

                while (len) {
                    val = parseInt(ccNum.charAt(--len), 10);
                    sum += (bit ^= 1) ? arr[val] : val;

                }

                return sum && sum % 10 === 0;
            };
        }([0, 2, 4, 6, 8, 1, 3, 5, 7, 9]));

        function DisplayErrorMessage(tag, msg) {
            var message = {
                options: {
                    title: tag,
                    message: msg
                },
                type: "error"
            };

            DisplayMessage(message);
        }
        function DisplayInfoMessage(tag, msg) {
            var message = {
                options: {
                    title: tag,
                    message: msg
                },
                type: "info"
            };

            DisplayMessage(message);
        }
        function DisplaySuccessMessage(tag, msg) {
            var message = {
                options: {
                    title: tag,
                    message: msg
                },
                type: "success"
            };

            DisplayMessage(message);
        }
        function DisplayMessage(message) {
            dialogService.showDialog(message.options.title, message.options.message);
        }

        function isObject(value) {
            return !value;
        }

        function setStates() {
            switch (book.purchase.billingCountry.Id) {
                case 'US':
                    book.requireStates = true;
                    book.showZip = true;
                    book.phoneMask = "1 000 000 0000";
                    book.billingPhone.setOptions({
                        mask: "1 000 000 0000"
                    });
                    book.billingZip.setOptions({ mask: "00000" });
                    book.usStateDataSource = new kendo.data.DataSource({
                        data: countriesAndStates.usStates,
                        dataTextField: "Name",
                        dataValueField: "Id",
                        valuePrimitive: true
                    });
                    break;
                case 'CA':
                    book.requireStates = true;
                    book.showZip = true;
                    book.billingPhone.setOptions({
                        mask: "1 000 000 0000"
                    });
                    book.billingZip.setOptions({ mask: "L0L 0L0" });
                    book.usStateDataSource = new kendo.data.DataSource({
                        data: countriesAndStates.caStates,
                        dataTextField: "Name",
                        dataValueField: "Id",
                        valuePrimitive: true
                    });
                    break;
                case 'MX':
                    book.requireStates = true;
                    book.showZip = false;
                    //This mask has to allow for 2 different formats. 52 ## #### #### - 52 # ### #### #### (all numeric) 
                    book.billingPhone.setOptions({ mask: "52 999999 0000 0000" });
                    book.usStateDataSource = new kendo.data.DataSource({
                        data: countriesAndStates.mxStates,
                        dataTextField: "Name",
                        dataValueField: "Id",
                        valuePrimitive: true
                    });
                    break;
                case 'GB':
                    book.requireStates = false;
                    book.showStates = false;
                    book.showZip = true;
                    book.billingPhone.setOptions({
                        mask: "44 999 999 00009"
                    });
                    //This mask has to allow for 2 different formats. 52 ## #### #### - 52 # ### #### #### (all numeric) 
                    book.billingZip.setOptions({ mask: "LAaaaaaaa" });
                    break;
                case 'NZ':
                    book.requireStates = false;
                    book.showStates = false;
                    book.showZip = true;
                    book.billingPhone.setOptions({
                        mask: "64 0 0000 0000"
                    });
                    book.billingZip.setOptions({ mask: "0000" });
                    break;
                case 'AU':
                    book.requireStates = true;
                    book.showZip = true;
                    //This mask has to allow for 2 different formats. 52 ## #### #### - 52 # ### #### #### (all numeric) 
                    book.billingPhone.setOptions({
                        mask: "61 00 0000 0000"
                    });
                    book.billingZip.setOptions({ mask: "0009" });
                    book.usStateDataSource = new kendo.data.DataSource({
                        data: countriesAndStates.auStates,
                        dataTextField: "Name",
                        dataValueField: "Id",
                        valuePrimitive: true
                    });
                    break;
                default:
                    book.requireStates = false;
                    book.showZip = false;
                    book.billingPhone.setOptions({
                        mask: "####################"
                    });
            }
        }

        // Returns a promise
        function processBooking(tripDetails) {
            var deferred = $q.defer();
            deferred.notify('About to book flight..');

            bookStateFactory.update(tripDetails);

            // Call Booking Api
            var promise = airBookService.book(tripDetails);
            promise.then(function (response) {
                console.log('processBooking() promise.then', response);

                // Check response for status code
                if (response.status === 200 && response.data.Success) {
                    console.log('response', response);

                    $state.go('confirmation', {
                        bookingId: response.data.AirBookingId
                    });

                    // set promise status
                    deferred.resolve();
                } else {
                    deferred.reject('got a response BUT the status message is not successful(200)');
                }
            },
            function (error) {
                deferred.reject(error);
            });

            return deferred.promise;
        }

        function validateDateOfBirth() {
            var today = new Date();
            var todayYear = today.getFullYear();
            var todayMonth = today.getMonth();
            var todayDay = today.getDate();
            var dateTwo = new Date(todayYear, todayMonth, todayDay);

            // Validate traveler birthdays are not greater than today
            for (var i = 0, tot = book.travelers.length; i < tot; i++) {
                var bday = book.travelers[i].birthDate;

                // Convert from string to int
                var monthNbr = moment().month(bday.month).format("M");

                var dateOne = new Date(bday.year, monthNbr, bday.day);
                if (moment(dateOne).isAfter(dateTwo))
                    return false;
            }

            return true;
        }


        // TESTING PURPOSES ONLY
        var randomString = function (length) {
            var text = "";
            var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            for (var i = 0; i < length; i++) {
                text += possible.charAt(Math.floor(Math.random() * possible.length));
            }
            return text;
        };
        var randomNumber = function (min, max) {
            return Math.floor(Math.random()*(max-min+1)+min);
        };
    };
})();