(function () {
    "use strict";

    angular
        .module("airApp")
        .controller("airController", airController);

    airController.$inject = [
        "$window", "$document", "$location", "$state", "$scope", "$stateParams",
        "$timeout", "$filter", "currentSession", "usSpinnerService", "tmhDynamicLocale",
        "dialogService", "StringService", "airSearchService", "airBookService",
        "airPassengerFactory", "searchStateFactory"
    ];

    function airController($window,
        $document,
        $location,
        $state,
        $scope,
        $stateParams,
        $timeout,
        $filter,
        currentSession,
        usSpinnerService,
        tmhDynamicLocale,
        dialogService,
        StringService,
        airSearchService,
        airBookService,
        airPaxFactory,
        searchStateFactory
        ) {

        /***********************************************/
        /********* PRIVATE PROPERTIES/FIELDS ***********/
        /***********************************************/

        /* jshint valid this:true */
        var vm = this;
        //console.dir(currentSession);
        //vm._searchUriBase = "/api/svc/air/v1/flightsearch?";      

        var bookingObject = "bookingInfoObject";

        /***********************************************/
        /*********************** END *******************/
        /***********************************************/

        vm.completeFlightCount = 0;
        vm.singleFlightCount = 0;
        vm.correlationId = "none";
        vm.paxAdultDataSource = ["1", "2", "3", "4", "5", "6", "7", "8", "9"];
        vm.paxChildDataSource = ["0", "1", "2", "3", "4", "5", "6", "7", "8"];
        vm.autoFromValue = "";
        vm.autoToValue = "";
        vm.show = {
            error: {
                checkout: false,
                message: ""
            }
        };

        vm.startSpin = function () {
            $timeout(function () {
                usSpinnerService.spin("spinner-1");
            }, 10);
        };
        vm.stopSpin = function () {
            $timeout(function () {
                usSpinnerService.stop("spinner-1");
            }, 20);
        };

        vm.searchType = "RoundTrip";
        vm.paxTypes = {
            "Adult": "1",
            "Child": "0",
            "Infant": "0"
        };
        vm.displayDepartFlight = true;
        vm.displayCompleteFlight = false;
        vm.displayReturnFlight = false;

        vm.resultGridElement = angular.element(document.querySelector("#resultGrid"));

        vm.searchFormValidation = {
            disableSearchButton: false,
            regEx: /\((\w{3})\)/,
            kendoDateFormat: "MM/dd/yyyy",
            momentDateFormat: "MM/DD/YYYY",
            isValidDateFields: false,
            isValidCityFields: false
        };
        vm.searchParams = {};
        vm.test = {};
        vm.searchSelections = {
            selectedFlights: [],
            travelerTypes: []
        };

        vm.ffpItemTemplate = '<span class="k-item-name">#:name#</span>';
        vm.ffpGroupTemplate = '<span>#:data#</span>';

        vm.ffpFromDataSource = new kendo.data.DataSource({
            serverFiltering: true,
            transport: {
                read: {
                    url: "/svc/air/v1/autocompleteffp",
                    data: function () {
                        return {
                            "term": vm.autoFromValue
                        };
                    }
                }
            },
            group: { field: "serves" },

            change: function (e) {
                //  alert("auto is " + vm.autoValue);
                //      console.log("Value is", JSON.stringify(e.sender.data()));
            }
        });
        vm.ffpToDataSource = new kendo.data.DataSource({
            serverFiltering: true,
            transport: {
                read: {
                    url: "/svc/air/v1/autocompleteffp",
                    data: function () {
                        return {
                            "term": vm.autoToValue
                        };
                    }
                }
            },
            group: { field: "serves" },

            change: function (e) {
                //  alert("auto is " + vm.autoValue);
                //      alert("Value is" + JSON.stringify(e.sender.data()));
            }
        });

        vm.departureDate = moment().add(6, 'weeks').toDate(); // default depart date is 6 weeks from today.
        vm.returnDate = moment().add(7, 'weeks').toDate();
        vm._dtpMin = moment().add(48, 'hours').toDate();
        vm._dtpMax = moment().add(330, 'days').toDate();

        vm.validateFlightDates = function () {
            var isValid = vm._isValidReturnDate(vm.returnDate, vm.departureDate);
            vm.search.$setValidity("returnDate", isValid);
            vm.search.$setValidity("departureDate", isValid);
        };

        vm._isValidReturnDate = function (newRetDate, departDate) {
            var newDate = moment(newRetDate);
            var depDate = moment(departDate);

            return newDate.isBefore(departDate) ? false : true;
        };

        //temp hard coded variables for display options
        vm.messageDialog = {};
        vm.viewCollapsed = true;
        vm.visibleSearchResults = [];
        vm.mapSearchResults = [];
        vm.images = [
            "/apps/assets/imgs/air/common/flight1.jpg"
        ];

        vm.getAirportCode = function (completeValue) {
            var l = completeValue.length;
            var y = completeValue.slice(l - 4, l - 1);
            return y;
        };

        vm.visibleSearchResults = [];
        vm.title = "airController";

        vm.currentSession = currentSession;

        vm.place = null;
        vm.hotelSearchResults = {};

        vm.agentId = vm.currentSession.identity.ice_agent_id;
        vm.agentName = vm.currentSession.identity.ice_agent_name;

        vm.returnFlights = [];
        vm.departingFlight = {};


        /*********** Begin locale changes ****************/
        //there's an issue with the format of the languages that are coming in. They are coming in like this "en_us" and they need to come in like this "en-us"
        vm.locale = vm.currentSession.display_options.Locale;

        //load localization correctly comes in as "en_US" and needs to be converted to en-us in order for tmhDynamicLocale to work.
        var replacedLocale = vm.locale.toLowerCase();
        replacedLocale = replacedLocale.replace('_', '-');
        tmhDynamicLocale.set(replacedLocale);
        vm.currencyCode = vm.currentSession.display_options.currency_code;
        vm.currencySymbol = vm.currentSession.display_options.currency_symbol;        
        vm.countrycode = vm.currentSession.display_options.country_code;

        /*********** End locale changes ****************/

        vm.userid = currentSession.identity.ice_name_id;
        //var user = sessionService.user || {};
        // user.currentSession = vm.currentSession;
        //console.log('sesssion  ' + JSON.stringify(vm.currentSession, null, '\t'));
        // sessionService.updateUser(user);




        /***********************************************/
        /**********     PUBLIC FUNCTIONS     ***********/
        /***********************************************/
        vm.return = function () {
            // Remove selected departing Flight from saved scope
            // Route user to previous $state() or perform a $state.go()
        };


        vm.searchFormValidationOptions = {
            rules: {
                notNull: function (input) {
                    var _valid = true;

                    if (input.is("[name=flyingFrom]") || input.is("[name=flyingTo]")) {
                        if (!vm.searchFormValidation.regEx.test(input.val())) {
                            _valid = false;
                        }
                    }

                    return _valid;
                },
                dateFormat: function (input) {
                    var _valid = true;

                    if (input.is("[name=departureDate]")) {
                        // Kendo date format is different than MomentJs dateformat 
                        // (specifically the day and year digits are case-sensitive)
                        if (!moment(input.val(), vm.searchFormValidation.momentDateFormat, true).isValid()) {
                            _valid = false;
                        }
                    }

                    if (input.is("[name=returnDate]")) {
                        if (vm.searchType.toLowerCase() === "roundtrip") { // RoundTrip
                            if (!moment(input.val(), vm.searchFormValidation.momentDateFormat, true).isValid()) {
                                _valid = false;
                            }
                        }
                    }

                    return _valid;
                }
            },
            messages: {
                notNull: "Must select from list",
                dateFormat: "Date is not in correct Format"
            }
        };

        vm._modelToSearchParams = function () {
            var searchForm = {
                searchType: vm.searchType,
                origin: vm.getAirportCode(vm.autoFromValue),
                destination: vm.getAirportCode(vm.autoToValue),
                departureDate: moment(vm.departureDate),
                returnDate: moment(vm.returnDate),
                paxTypes: vm.paxTypes
            };

            return searchForm;
        };

        vm.getFlights = function () {
            vm.searchFormValidation.disableSearchButton = true;
            vm.startSpin();
            vm.searchParams = vm._modelToSearchParams();
            if (vm.searchParams.destination.length === 0) {
                return;
            }
            searchStateFactory.update(vm.searchParams);

            if (vm.searchParams.origin === "All") {
                vm.stopSpin();
                dialogService.showDialog("This is embarassing..", "We don't support 'All' airport selections quite yet");
                vm.searchFormValidation.disableSearchButton = false;
                return;
            }

            var flights = airSearchService.getFlights(vm.searchParams);

            flights.success(function (response) {
                console.log('flights', response);
                vm.completeFlights = 0;
                vm.outboundFlights = response.OutboundAirFlightOptions;

                vm.completeFlightCount = 0;
                vm.singleFlightCount = vm.outboundFlights.length;
                vm.correlationId = response.CorrelationId;
                vm.stopSpin();
                vm.searchFormValidation.disableSearchButton = false;
            });

            flights.error(function (error) {
                dialogService.showDialog("Oops-Gremlins!", "Search Error: " + JSON.stringify(error, null, '\t'));
                vm.stopSpin();
                vm.searchFormValidation.disableSearchButton = false;
            });

            vm.returnedFlights = flights;

            //var searchUri = vm._getQueryStringFromParams(vm.searchParams);
            airPaxFactory.setSearchedPax(vm.searchParams.paxTypes);
            $state.go("searchresults");

            return flights;
        };

        vm.validate = function (event) {
            event.preventDefault();

            if (vm.validator.validate()) {
                vm.getFlights();
            } else {
                //vm.validationMessage = "Oops! There is invalid data in the form.";
                //vm.validationClass = "invalid";
            }
        };

        /* Deprecated as of 12/12/2016 by atm */
        //vm.doBooking = function (selectedFlights) {
        //    console.dir(selectedFlights);
        //    var newSelectedFlights = [];
        //    newSelectedFlights.push(selectedFlights);
        //    vm.searchSelections.selectedFlights = newSelectedFlights;
        //    vm.searchSelections.paxTypes = vm.searchParams.paxTypes;
        //    vm.searchSelections.searchType = vm.searchParams.searchType;
        //    $state.go("book", { bookingObject: vm.searchSelections });
        //    //console.dir(vm.searchSelections);
        //    vm.stopSpin();
        //};

        // #TODO: TESTING PURPOSES; Remove this function in production
        vm.skipToBook = function (flight) {
            UpdateSelectedFlights(flight);

            vm.searchSelections.paxTypes = vm.searchParams.paxTypes;
            vm.searchSelections.searchType = vm.searchParams.searchType;

            $state.go("book", {
                booking: vm.searchSelections
            });
        };

        vm.displayReturnOptions = function (flight) {
            var len = flight.ReturnOptions.length;
            var text = "<table style='width:800px'>";
            for (var i = 0; i < len; i++) {
                text += "<tr><td>";
                text += flight.ReturnOptions[i].Description;
                text += "/<td><td><button type='button' id='bookit'>Book</button></td></tr>";
            }
            text += "</table>";

            dialogService.showContent("Return Options", text);
        };

        vm.displayFlightDetail = function (flight) {
            var text = "<table>";
            text += "<tr><td style='width:100px'>Id </td><td>" + flight.Id + "</td></tr>";
            text += "<tr><td style='width:100px'>RefId </td><td>" + flight.RefId + "</td></tr>";
            text += "<tr><td style='width:100px'>IsRefundable </td><td>" + flight.IsRefundable + "</td></tr>";
            text += "<tr><td style='width:100px'>Total Fare </td><td>" + flight.TotalFareAmount + "</td></tr>";
            text += "<tr><td style='width:100px'>Flight Time </td><td>" + flight.FlightElapseTime + "</td></tr>";
            text += "<tr><td style='width:100px'>Fare Codes </td><td>" + flight.FareCodes + "</td></tr>";
            text += "</table>";
            text += "<h4>segments</h4>";
            text += "<table>";
            var len = flight.Segments.length;

            for (var i = 0; i < len; i++) {
                text += "<tr>";
                text += "<td style='width:50px'> " + flight.Segments[i].DepartureAirport + " </td>";
                text += "<td style='width:50px'> " + flight.Segments[i].DepartureTime + " </td>";
                text += "<td style='width:50px'> " + flight.Segments[i].ArrivalAirport + " </td>";
                text += "<td style='width:50px'> " + flight.Segments[i].ArrivalTime + " </td>";
                text += "<td style='width:50px'> " + flight.Segments[i].CarrierCode + " </td>";
                text += "<td style='width:50px'> " + flight.Segments[i].OpCarrierCode + " </td>";
                text += "<td style='width:50px'> " + flight.Segments[i].FlightNumber + " </td>";
                text += "</tr>";
            }
            text += "</table>";

            dialogService.showContent("Flight Detail", text);
        };

        /* searchresults Page > sub-step 1 */
        vm.saveDepartFlight = function (departingFlight) {
            if (departingFlight.ReturnOptions.length > 0) {
                vm.returnFlights = departingFlight.ReturnOptions;
            } else {
                alert('no return flights');
            }

            vm.departingFlight = departingFlight;
            // TODO: add logic to store return flight in service...
            vm.departFlightSummary = airBookService.getFlightSummary(vm.departingFlight);

            // Update persistant object
            UpdateSelectedFlights(vm.departingFlight);

            $state.go("book", {
                booking: vm.searchSelections
            });
        };

        vm.searchCompleted = function () {
            $state.go("searchresultslist");
            vm.stopSpin();
        };

        vm.returnUserToIndex = function () {
            $state.go('index');
            vm.stopSpin();
        };



        vm.setDialog = function () {
            dialogService.setDialogWidget(vm.messageDialog);
        };

        vm.setContent = function () {
            dialogService.setContentWidget(vm.contentDialog);
        };

        vm.setIframe = function () {
            dialogService.setIframeWidget(vm.contentIframe);
        };

        vm.formatDuration = function (duration) {
            return airBookService.formatDuration(duration);
        };

        vm.updatePassengers = function () {
            vm.paxTypes.Adult = vm.passengers;
        };

        vm.closeDialog = function () {
            vm.messageDialog.close();
        };

        vm.closeContent = function () {
            vm.contentDialog.close();
        };

        vm.viewMaximize = function () {
            vm.viewCollapsed = false;
            vm.agentView.toggle("#agenttaskbar", true);
        };

        vm.viewMinimize = function () {
            vm.viewCollapsed = true;
            vm.agentView.toggle("#agenttaskbar", false);
        };

        vm.validatePaxRules = function () {
            vm.show.error.checkout = false;
            vm.show.error.message = "";

            var adults = parseInt(vm.paxTypes.Adult);
            var children = parseInt(vm.paxTypes.Child);
            var infants = parseInt(vm.paxTypes.Infant);

            if (infants > 0) {
                vm.show.error.checkout = true;
                vm.show.error.message += "Please note that passengers booked as infants MUST be under two years of age on the date of departure of the last flight on your itinerary. If the passenger will be older than two years on that date, you will be asked at the airport to rebook your ticket as a child fare.\n";
            }

            if (isNaN(adults) || isNaN(children) || isNaN(infants)) {
                vm.show.error.checkout = true;
                vm.show.error.message += "We're sorry, something strange happened with passenger selection. Please try again.\n";
            }

            if (adults + children + infants > 9) {
                vm.show.error.checkout = true;
                vm.show.error.message += "We're sorry, you cannot book more than nine (9) passengers at a time. Please call customer service.\n";
                vm.search.paxAdults.$setValidity("text", false);
                //vm.search.paxChildren.$setValidity("text", false);
                //vm.search.paxInfants.$setValidity("text", false);
            } else {
                vm.search.paxAdults.$setValidity("text", true);
                //vm.search.paxChildren.$setValidity("text", true);
                //vm.search.paxInfants.$setValidity("text", true);
            }

            if (infants > adults) {
                vm.show.error.checkout = true;
                vm.show.error.message += "We're sorry, as each infant will be paired with an adult for ticketing, there must be at least an equal number of adults and infants in the party.\n";
                vm.search.paxAdults.$setValidity("text", false);
                //vm.search.paxInfants.$setValidity("text", false);
            } else {
                vm.search.paxAdults.$setValidity("text", true);
                //vm.search.paxInfants.$setValidity("text", true);
            }
        };

        /*****************************************/
        /*********  PRIVATE FUNCTION     *********/
        /*****************************************/
        /**
        * Updates client-side factory (persisted across controllers)
        *
        * @param {string} flight details about the flight selection
        **/
        function UpdateSelectedFlights(flight) {
            var idx = vm.searchSelections.selectedFlights.indexOf(flight);

            // if item is not found, add it
            if (idx === -1) {
                vm.searchSelections.selectedFlights.push(flight);
            }

                // if item already exists, remove it
            else if (idx > -1) {
                vm.searchSelections.selectedFlights.splice(idx);
            }
        }


        /*****************************************/
        /*********      GLOBAL CODE     **********/
        /*****************************************/
        angular.forEach(vm.currentSession.display_options.logos, function (object, key) {
            if (object.logo_number === 1) {
                vm.mainLogo = object.logo_image_url;
            }
            if (object.logo_number === 2) {
                vm.secondLogo = object.logo_image_url;
            }
        });
    }
})();
