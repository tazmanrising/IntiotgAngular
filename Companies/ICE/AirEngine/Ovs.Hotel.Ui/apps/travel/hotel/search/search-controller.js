(function() {
    "use strict";

    angular
        .module("hotelApp")
        .controller("hotelController", hotelController);

    hotelController.$inject = [
        "$window", "$document", "$location", "$state", "$scope", "$stateParams", "$timeout", "currentSession", "SearchService", "SessionService", "usSpinnerService", "searchFactory", "tmhDynamicLocale", "hotelresultsFactory", "dialogService"
    ];

    function hotelController($window, $document, $location, $state, $scope, $stateParams, $timeout, currentSession, SearchService, SessionService, usSpinnerService, searchFactory, tmhDynamicLocale, hotelresultsFactory, dialogService) {
        /* jshint validthis:true */
        var vm = this;

        //temp hard coded variables for display options
        vm.messageDialog = {};
        vm.viewCollapsed = true;
        vm.visibleSearchResults = [];
        vm.mapSearchResults = [];
        vm.images = [
            "/apps/assets/imgs/hotel/common/destinations/hotel-room.jpg"
        ];

        vm.hotelsReturned = hotelresultsFactory.results || {};
        vm.searchData = searchFactory.search || {};
        vm.visibleSearchResults = [];
        vm.title = "hotelController";
        vm.mapCenter = [33.4500, -112.0667];
        vm.zoomLevel = 10;
        vm.currentSession = currentSession;

        vm.place = null;
        vm.hotelSearchResults = {};

        vm.agentId = vm.currentSession.identity.ice_agent_id;
        vm.agentName = vm.currentSession.identity.ice_agent_name;
        vm.demoMode = vm.currentSession.display_options.demo_mode;

        /*********** Begin locale changes ****************/
        //there's an issue with the format of the languages that are coming in. They are coming in like this "en_us" and they need to come in like this "en-us"
        vm.locale = vm.currentSession.display_options.Locale;

        //load localization correctly comes in as "en_US" and needs to be converted to en-us in order for tmhDynamicLocale to work.
        var replacedLocale = vm.locale.toLowerCase();
        replacedLocale = replacedLocale.replace('_', '-');
        tmhDynamicLocale.set(replacedLocale);
        vm.currencycode = vm.currentSession.display_options.currency_code;
        vm.currencyFormat = vm.currentSession.display_options.options.currency_format || '';
        vm.countrycode = vm.currentSession.display_options.country_code;

        /*********** End locale changes ****************/
        
        vm.userid = currentSession.identity.ice_name_id;
        var user = SessionService.user || {};
        user.currentSession = vm.currentSession;
        //console.log('sesssion  ' + JSON.stringify(vm.currentSession, null, '\t'));
        SessionService.updateUser(user);
        vm.market;
        if (vm.currentSession.display_options.display_type == 'discount' || vm.currentSession.display_options.display_type == 'dbc') {
            vm.market = false;
        }
        else {
            vm.market = true;
        }
        vm.daily = vm.currentSession.display_options.options.show_daily_price;
        vm.searchCompleted = function() {
            $state.go("searchresultslist");
            vm.stopSpin();
        };
        vm.returnUserToIndex = function(){
            $state.go('index');
            vm.stopSpin();
        };
        vm.startSpin = function() {
            usSpinnerService.spin("spinner-1");
        };

        //start of map view results
        //vm.expandVisableSearchResults = function () {
        //    var curLen = vm.visibleSearchResults.length;
        //    if (vm.hotelsReturned.hotels) {
        //        if (curLen < vm.hotelsReturned.hotels.length) {
        //            var countToAdd = vm.hotelsReturned.hotels.length - curLen;
        //            if (countToAdd > 50) countToAdd = 50;
        //            for (var i = 0; i <= countToAdd; i++) {
        //                vm.visibleSearchResults.push(vm.hotelsReturned.hotels[curLen + i]);
        //            }
        //        }
        //    }

        //};
        angular.forEach(vm.currentSession.display_options.logos, function (object, key) {
            if(object.logo_number == 1){
                vm.mainLogo = object.logo_image_url;
            };
            if (object.logo_number == 2) {
                vm.secondLogo = object.logo_image_url;
            };

        });
        /********* Begin Endless Scroll ***********/
        vm.numShown = 50;
        angular.element($window).bind("scroll", function() {
            if ($window.pageYOffset >= ($document.height() * .8)) {
                $scope.$apply(function() {
                    vm.numShown += 10;
                });
            }
        });
        /********* Begin Endless Scroll ***********/


        vm.displayGridResults = function() {
            $state.go("searchresultsgrid");
        };

        vm.getfilteredHotels = function(filterHotels) {
            //for filtering map
            //console.log('filter hotels : ' + JSON.stringify(filterHotels, null, '\t'));
        };

        vm.displayMapResults = function() {
            //console.log('filtered hotels :' + JSON.stringify(vm.filteredHotels))
            vm.mapSearchResults = [];
            if (vm.hotelsReturned.hotels) {
                var totalProperties = vm.hotelsReturned.hotels.length - 1;
                var shapeName = "green";
                for (var i = totalProperties - 1; i > 0; i--) {

                    shapeName = vm.hotelsReturned.hotels[i].savings_percentage.toString();
                    var h = vm.hotelsReturned.hotels[i];
                    var tp = "<div style='background-color: #d5d7da; color:black; text-align:center'><figure><img width='100%'  src='" + h.hotel_snapshot.img_URL + "' class='img-responsive'></figure>";
                    tp = tp + "<div class='savings-amount-grid'><span style='color:red'>SAVE <strong>" + h.savings_percentage + "%</strong></span></div>";
                    tp = tp + "<h4 class='box-title'>" + h.hotel_snapshot.name + "<small> <br/>" + h.hotel_snapshot.location + "</small></h4>";

                    tp = tp + "<ul class='savings-breakdown'><li>Market Rate: <span>$ " + h.Total_market_price.toFixed(0) + "</span></li><li>Savings Credits: <span>$ ";
                    tp = tp + h.total_savings.toFixed(0) + "</span></li>";
                    tp = tp + "<li><strong>Your Price:</strong> <span><strong>$" + h.total_member_price.toFixed(0) + "</strong></span></li>";
                    tp = tp + "<li>$" + h.daily_member_rate.toFixed(0) + "/night without tax</li><a class='btn btn-primary' onclick='showHotelDetail('t');'>Select</a></div>";


                    var data = {
                        shape: shapeName,
                        location: [vm.hotelsReturned.hotels[i].hotel_snapshot.latitude, vm.hotelsReturned.hotels[i].hotel_snapshot.longitude],
                        tooltip: { showOn: "click", content: tp }
                    };
                    vm.mapSearchResults.push(data);
                }
                $state.go("searchresultsmap");
            }
        };

        vm.displayListResults = function() {
            $state.go("searchresultslist");
        };
        vm.stopSpin = function() {
            usSpinnerService.stop("spinner-1");
        };

        /*Boolean to flag if results should be displayed in the UI*/
        vm.show = {
            resultsReturned: false,
            processing: false,
            additionalGuests: false,
            error: {
                destination: false,
                checkin: false,
                checkout: false,
                numNights: false,
                search: false,
                noHotels: false,
                message: ""
            },
            showSection: true
        };

        vm.options = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17];
        vm.rooms = [1, 2, 3, 4, 5, 6];

        /*******   Begin Calendar  ********/

        /*group of variables that sets defaults for the check in, check out, number of nights, option dropdowns, and room fields. */
        vm.today = new Date();
        vm.todaysTime = vm.today.getHours();
        vm.tomorrow = new Date();
        vm.tomorrow.setDate(vm.today.getDate() + 1);
        vm.setMaxDate = new Date();
        vm.setMaxDate.setDate(vm.today.getDate() + 370);
        vm.uidialogTitle = "";


        /*sets the default calendar date to the next day if it's 3pm or later in the users time zone as per required business rules*/
        if (vm.todaysTime >= 15) {
            vm.today = vm.tomorrow;
        }
        /*These dates are set this way so that the calendar recognizes the correct date and time. Once the date is selected by the user it is passed correctly to the controller*/
        vm.today.setDate(vm.today.getDate() - 1);
        vm.tomorrow.setDate(vm.tomorrow.getDate());

        vm.numNights = 2;

        function setCheckoutStartDate() {

            /*set checkout calendar to start the 2 days after checkin*/
            vm.checkoutStartDate = angular.copy(vm.searchData.checkin) || new Date();
            vm.checkoutStartDate.setDate(vm.checkoutStartDate.getDate() + (parseInt(vm.numNights)));
            vm.searchData.checkout = vm.checkoutStartDate;
        };
        //sets a checkin date if the user selects a check out date first instead of a checkin date.
        function setCheckinDate() {
            var today = new Date();
            var todaysTime = vm.today.getHours();
            var tomorrow = new Date();
            tomorrow.setDate(today.getDate() + 1);

            if (vm.todaysTime >= 15) {
                today = tomorrow;
            }
            vm.searchData.checkin = today;
        };

        var previousCheckInDate;
        // parse a date in yyyy-mm-dd format
        function parseStringToDate(string) {
            if (string) {
                var parts = string.match(/(\d+)/g);
                // new Date(year, month [, date [, hours[, minutes[, seconds[, ms]]]]])
                return new Date(parts[0], parts[1] - 1, parts[2]); // months are 0-based
            }
        }
        vm.changeMonth = function () {
            if (!vm.searchData.checkin) {
                setCheckinDate();
            }
            if (previousCheckInDate) {
                if (previousCheckInDate < vm.searchData.checkin) {
                    setCheckoutStartDate();
                };
            };

            vm.show.error.checkout = false;
            vm.show.error.message = "";

            if (!vm.searchData.checkout) {
                setCheckoutStartDate();
            } else {
                /*if the user sets the date to past the dates we have available from our vendors (about 370 days) set the form to invalid
            and show an error in the UI
            */
                //if (vm.checkoutStartDate > vm.setMaxDate || Date.parse(vm.searchData.checkout) > Date.parse(vm.setMaxDate)) {
                //    vm.show.error.checkout = true;
                //    vm.show.error.message = "Our apologies, we can only book hotel stays 370 days from today.";
                //    setCheckoutStartDate();
                //    vm.search.checkout.$setValidity("date", false);
                //    vm.search.checkout.$setValidity("min", false);
                //    vm.search.checkout.$setValidity("max", false);
                //    vm.search.checkout.$setDirty();
                //    return;
                //} else {
                //    ///*ensure that date isn't set outside of date available one last time.*/
                //    //if (vm.checkoutStartDate > vm.setMaxDate || Date.parse(vm.searchData.checkout) > Date.parse(vm.setMaxDate)) {
                //    //    vm.show.error.checkout = true;
                //    //    vm.show.error.message = "";
                //    //}
                //}
            };

            vm.validateMaxStay();
            previousCheckInDate = vm.searchData.checkin;
        };
 
        //ensures that the UI user can't book more than 28 days at a time.
        vm.validateMaxStay = function() {
            vm.show.error.checkout = false;
            vm.show.error.message = "";
            var oneDay = 24 * 60 * 60 * 1000;
            var maxHotelStay = new Date();

            if (!vm.searchData.checkin) {
                setCheckinDate();
            };
            if (typeof vm.searchData.checkout !== "object"){ 
                vm.searchData.checkout = parseStringToDate(vm.searchData.checkout);
            }
            if (typeof vm.searchData.checkin !== "object") {
                vm.searchData.checkin = parseStringToDate(vm.searchData.checkin);
            };
            var dateDiff = Math.round(Math.abs((vm.searchData.checkout.getTime() - vm.searchData.checkin.getTime()) / (oneDay)));
                //console.log('dateDiff : ' + dateDiff);
            if (dateDiff > 28) {
                maxHotelStay.setDate(vm.searchData.checkin.getDate() + parseInt(28));
                vm.searchData.checkout = maxHotelStay;
                vm.show.error.checkout = true;
                vm.show.error.message = "Our apologies, the maximum allowed hotel stay is 28 days. Please adjust your dates.";
                //set form validity to invalid
                if (vm.search) {
                    vm.search.checkout.$setValidity("date", false);
                }
            };

            if (vm.searchData.checkout <= vm.searchData.checkin) {
                vm.show.error.checkout = true;
                vm.show.error.message = "Our apologies, your Check-Out date is before or the same as your Check-In date.";
                if (vm.search) {
                    vm.search.checkout.$setValidity("date", false);
                }
            };

            if (vm.checkoutStartDate > vm.setMaxDate || Date.parse(vm.searchData.checkout) > Date.parse(vm.setMaxDate)) {
                vm.show.error.checkout = true;
                vm.show.error.message = "Our apologies, we can only book hotel stays 370 days from today.";
                setCheckoutStartDate();
            }

            if (vm.show.error.checkout == true) {
                if (vm.search) {
                    vm.search.checkout.$setValidity("date", false);
                    vm.search.checkout.$setValidity("min", false);
                    vm.search.checkout.$setValidity("max", false);
                    vm.search.checkout.$setDirty();
                }
            } else {
                if (vm.search) {
                    vm.search.checkout.$setValidity("date", true);
                    vm.search.checkout.$setValidity("min", true);
                    vm.search.checkout.$setValidity("max", true);
                }
            }
        };
        /*******  End Calendar  ******/

        /*JSON envelope properties. These should not be hard coded but are for continuation of front end development.*/
        vm.hotels = {};

        //sets a default value for the number of rooms.
        vm.searchData.numRooms = 1;


        //set children and adults defaults 
        vm.occupancyDefaults = [
            {
                id: 1,
                label: "2 Adults, 0 Children",
            }, {
                id: 2,
                label: "1 Adult, 0 Children",
            }, {
                id: 3,
                label: "More Options",
            }
        ];


        if (!$stateParams.children || !$stateParams.numAdults || !vm.ageList) {
            vm.defaultSelected = { id: 1 };
        }

        vm.setOccupancy = function (defaultSelected) {
            if (typeof vm.searchData.numAdults === 'string') {
                vm.searchData.numAdults = parseInt(vm.searchData.numAdults);
            };
            switch (defaultSelected.id) {
            case 1:
                vm.searchData.numAdults = 2;
                vm.searchData.numChildren = 0;
                vm.show.additionalGuests = false;
                vm.ageList = undefined;
                break;
            case 2:
                vm.searchData.numAdults = 1;
                vm.searchData.numChildren = 0;
                vm.show.additionalGuests = false;
                vm.ageList = undefined;
                break;
            case 3:
                vm.show.additionalGuests = true;
                if (!vm.ageList) {
                    vm.childAge(0, 0);
                };
                vm.agesToArray();  
                vm.searchData.numChildren = vm.ageList.length;
                break;
            }
        };

        //function called from the numChildren drop down. Get the number of drop down boxes actually being shown for children's ages. 
        //Then compares the number of children listed in the vm.ageList array to the number of children that are supposed to be shown. 
        //If they don't match then the ageList variable is set to undefined so that all ages can be reset.  
        //Then for each child age drop down box the childAge function is called acting as though ng-change was triggered in the UI.
        vm.checkChildren = function() {
            $timeout(function() {
                vm.childrenShown = angular.element(document.getElementsByClassName("child")).length;
                if (vm.ageList) {
                    if (vm.childrenShown !== vm.ageList.length) {
                        vm.ageList = undefined;
                        var resetAge;
                        for (var k = 0; k < vm.childrenShown; k++) {
                            if (vm.childrenShown === 1) {
                                resetAge = 0;
                            } else {
                                var age = angular.element(document.getElementById("child" + k).selectedIndex);
                                resetAge = age[0];
                            }
                            vm.childAge(resetAge, k);
                        }
                    };
                    if (vm.ageList.length !== vm.searchData.numChildren) {
                        if (vm.ageList.length < vm.searchData.numChildren) {
                            var childrenToAdd = vm.searchData.numChildren - vm.ageList.length;
                            for (var p = 0; p < childrenToAdd; p++) {
                                var childList =
                                    {
                                        'index': vm.ageList.length,
                                        'age': 0,
                                    };
                                vm.ageList.push(childList);
                            }
                            //console.log("age list : " + JSON.stringify(vm.ageList, null, '\t'));
                        } else {
                            var childrenToRemove = vm.ageList.length - vm.searchData.numChildren;
                            for (var q = 0; q < childrenToRemove; q++) {
                                vm.ageList.pop();
                            }
                        }
                    };
                     //console.log("age list : " + JSON.stringify(vm.ageList, null, '\t'));
                };
            }, 10);
        };
        /*
        Temp holds the child number and ages that are being entered from the UI and puts them into an array of objects. Ensures that there are no duplicates. 
        Later will be used in the search call to strip out final ages once the search button is pushed. Fired on change of the child age drop down boxes.
        */
        vm.childAge = function(age, childNumber) {
          
            if (!age) {
                age = 0;
            }
            //also need to strip ages out for a final array to give to the actual search call once the search button is hit. 
            var childList =
            {
                'index': childNumber,
                'age': age,
            };

            vm.agesToArray();
  
            //if the age list doesn't exist yet then create it and add the first item.
            if (!vm.ageList) {
                vm.ageList = [];
                vm.ageList.push(childList);
            }

            var exists = false;
            //if the age has already been entered for the child. 
            for (var i = 0; i < vm.ageList.length; i++) {

                if (vm.ageList[i].index === childNumber) {
                    exists = true;
                    for (var prop in vm.ageList[i]) {
                        if (prop == "index") {
                            continue;
                        }
                        vm.ageList[i][prop] = age;
                        break;
                    };
                }
            };
            if (exists === false) {
                vm.ageList.push(childList);
            };
            //console.log('ages value : ' + JSON.stringify(vm.ageList, null, '\t'));

        };
        //Gets the vm.ageList array at it's final states and strips out all the ages into a new array to use in the search call. 
        vm.processChildAges = function() {
            vm.finalAges = [];
            if (!vm.ageList) {
                vm.finalAges = "none";
                return vm.finalAges;
            }
            angular.forEach(vm.ageList, function(object, key) {
                vm.finalAges.push(object.age);
            });
            vm.finalAges.toString();
            return vm.finalAges;
        };

        vm.agesToArray = function () {
            if (typeof vm.ageList === 'string') {
                var tempAgeArray = [];
                var tempAgeList = vm.ageList.split(',');

                for (var l = 0; l < tempAgeList.length; l++) {
                    var childList = {
                        'index': l,
                        'age': parseInt(tempAgeList[l]),
                    };
                    tempAgeArray.push(childList);
                };
                vm.ageList = [];
                vm.ageList = tempAgeArray;
            }  
        };
        vm.agesToArray();

        /*form validation - called by getHotels()*/
        function validateForm() {
            if (!vm.searchData.destination.place) {
                //console.log("Please enter a valid destination");
                dialogService.showDialog("Destination", "Please enter a destination.");
                return false;
            } else if (vm.searchData.checkin == "Invalid Date") {
                //console.log("Please enter a check in date.");
                dialogService.showDialog("Missing Input", "Please enter a check in date.");
                return false;
            } else if (vm.searchData.checkout == "Invalid Date") {
                //console.log("Please enter a check out date.");
                dialogService.showDialog("Missing Input", "Please enter a check in date.");
                return false;
            } else if (vm.searchData.checkout > vm.setMaxDate) {
                //console.log("check out : " + vm.searchData.checkout);
                //console.log("set max date : " + vm.setMaxDate);
                //console.log("We do not have hotel availability past " + vm.setMaxDate + ", please select a different date range.");
                dialogService.showDialog("Date too Far Out", "We do not have hotel availability past " + vm.setMaxDate + ", please select a different date range");
                return false;
            } else if (!vm.searchData.destination.lat) {
                //console.log("Please enter a valid place. latitude is missing : " + vm.searchData.destination.lat);
                dialogService.showDialog("Destination", "Please enter a valid destination.");
                return false;
            } else if (!vm.searchData.destination.lng) {
                //console.log("Please enter a valid place. longitude is missing : " + vm.searchData.destination.lng);
                dialogService.showDialog("Destination", "Please enter a valid destination.");
                return false;
            } else {
                return true;
            }
        }
        vm.displayFooterPopup = function (label, filePath) {
            dialogService.showIframe(label, filePath);
        };
        /*Begin Hotels being returned*/

        /*function that is called on click from the search button in the UI. Calls to hotelSearch-service*/
        vm.getHotels = function () {
            
            vm.hotelsReturned = {};
            if(vm.rating){
                vm.setStarRatingFilter(null);
            };
            vm.show.error.message = "";
            //return set the variable vm.finalAges in order to be used in the search call. Will produce vm.finalAges to use in the search call. 
            vm.processChildAges();
            //console.log('ageList from get Hotels call' + vm.ageList)
            if (!vm.finalAges) {
                vm.finalAges = "none";
            };
            vm.hotelsReturned = {};
            vm.visibleSearchResults = [];
            /*the dates recorded from the UI need to changed into the proper date format.*/
            vm.searchData.checkin = new Date(new Date(vm.searchData.checkin).setHours(0, 0, 0, 0)).toJSON();
            vm.searchData.checkout = new Date(new Date(vm.searchData.checkout).setHours(0, 0, 0, 0)).toJSON();
            vm.searchData.radius = 5;
            vm.searchData.childages = vm.finalAges;
            searchFactory.update(vm.searchData);
            var formValidation = validateForm();
            if (!formValidation) {
                return false;
            }
            vm.show.processing = vm.show.processing ? false : true;
            vm.show.showSection = false;
            vm.browserWarningGiven = false;
            vm.startSpin();
            searchFactory.update(vm.searchData);
            vm.mapCenter = [vm.searchData.destination.lat, vm.searchData.destination.lng];
            vm.hotelsReturned = SearchService.getHotels(vm.searchData.destination.place, vm.searchData.destination.lat, vm.searchData.destination.lng, vm.searchData.radius, vm.searchData.checkin, vm.searchData.checkout, vm.searchData.numRooms, vm.searchData.numAdults, vm.finalAges, vm.userid, vm.locale, vm.currencycode, vm.countrycode, vm.agentId, vm.agentName)
                .success(function(response) {
                    vm.finalAges = undefined;
                    
                    /*returned data*/
                    vm.hotelsReturned = response;
                    //console.log('hotels returned : ' + JSON.stringify(vm.hotelsReturned.hotels[0], null, '\t'));

                    vm.hotels = vm.hotelsReturned.hotels;
                    if (vm.hotels.length == 0) {          
                        dialogService.showDialog("Please search again.", "Our apologies, we do not have any hotels in this destination to accommodate your travel plans");
                        vm.returnUserToIndex();
                        return;
                    };
                    vm.show.processing = vm.show.processing ? false : true;

                    setSliderDefaults();

                    /*set flag to true so that results are shown in the UI*/
                    vm.show.resultsReturned = true;
                    vm.boundaries = vm.hotelsReturned.areas;
                    vm.amenities = vm.hotelsReturned.amenities;
                    setBoundaryListDefaults();
                    setAmenitiesListDefaults();
                    setCurrentHotelsList();
                    hotelresultsFactory.update(response);
                    //vm.expandVisableSearchResults();

                    vm.searchCompleted();

                })
                .error(function(error) {
                    vm.stopSpin();
                    if (vm.hotelsReturned.$$state.value.status === -1) {
                        dialogService.showDialog("It's taking too long!", "We apologize for the long search time.  Your request has been recorded so we can research it.  Please try again in a few seconds.");
                    } else {
                        dialogService.showDialog("We've had a problem...", "We apologize but there has been an error during your search.  Your request has been recorded so we can research it.");
                    };
                    vm.show.processing = false;
                });
        };
        vm.closeDialog = function() {
            vm.messageDialog.close();
        };

        vm.closeContent = function() {
            vm.contentDialog.close();
        };

        vm.viewMaximize = function() {
            vm.viewCollapsed = false;
            vm.agentView.toggle("#agenttaskbar",true);
        };

        vm.viewMinimize = function() {
            vm.viewCollapsed = true;
            vm.agentView.toggle("#agenttaskbar",false);
        };

        /*function that is called on init from the search button in the UI. Calls to hotelSearch-service. Determines if search was passed in with URL parameters. */
        vm.clubSearch = function () {
            //console.log($stateParams);
            if ($stateParams.destination && $stateParams.lat && $stateParams.lng && $stateParams.radius && $stateParams.checkin && $stateParams.checkout && $stateParams.numRooms && $stateParams.numAdults && $stateParams.children && $stateParams.userid && $stateParams.locale && $stateParams.currencycode) {
                vm.searchData.destination = {
                    place: $stateParams.destination,
                    lat: $stateParams.lat,
                    lng: $stateParams.lng
                };
                vm.searchData.radius = $stateParams.radius;
                vm.searchData.checkin = $stateParams.checkin;
                vm.searchData.checkout = $stateParams.checkout;
                vm.searchData.numAdults = parseInt($stateParams.numAdults);
                vm.searchData.childages = $stateParams.children;
                vm.finalAges = $stateParams.children;
                vm.mapCenter = [vm.searchData.destination.lat, vm.searchData.destination.lng];
                vm.ageList = $stateParams.children;
                $stateParams.userid = vm.userid;
                $stateParams.locale = vm.locale;
                $stateParams.currencycode = vm.currencycode;
            
                if ($stateParams.numAdults == 1 && $stateParams.children == "none") {
                    vm.searchData.childages = 'none';
                    vm.defaultSelected = { id: 2 };
                } else if ($stateParams.numAdults == 2 && $stateParams.children == "none") {
                    vm.searchData.childages = 'none';
                    vm.defaultSelected = { id: 1 };
                } else if ($stateParams.children != "none" || vm.ageList) {
                    vm.defaultSelected = { id: 3 };
                    vm.agesToArray();
                    if (!vm.ageList) {
                        vm.childAge(0, 0);
                    };
                    angular.forEach(vm.ageList, function (value, key) {
                        vm.childAge(key, value.age);
                    });
                    vm.searchData.numChildren = vm.ageList.length;
                }
                searchFactory.update(vm.searchData);
            
                $timeout(function () {
                        //if ($stateParams.children === "none") {
                        //    $stateParams.children = 'none';
                        //}
                        vm.startSpin();
                        vm.searchData.destination = {
                            place: $stateParams.destination,
                            lat: $stateParams.lat,
                            lng: $stateParams.lng
                        };

                        vm.searchData.radius = $stateParams.radius;
                        vm.searchData.checkin = $stateParams.checkin;
                        vm.searchData.checkout = $stateParams.checkout;
                        vm.searchData.numAdults = $stateParams.numAdults;
                        vm.searchData.childages = $stateParams.children;
                        vm.finalAges = $stateParams.children;
                        vm.ageList = $stateParams.children;
                        searchFactory.update(vm.searchData);

                        vm.hotelsReturned = SearchService.getHotels($stateParams.destination, $stateParams.lat, $stateParams.lng, $stateParams.radius, $stateParams.checkin, $stateParams.checkout, $stateParams.numRooms, $stateParams.numAdults, $stateParams.children, vm.userid, vm.locale, vm.currencycode, vm.countrycode, vm.agentId, vm.agentName)
                            .success(function (response) {                                
                                /*returned data*/
                                vm.hotelsReturned = response;
                                //console.log(JSON.stringify(vm.hotelsReturned, null, '\t'));

                                vm.hotels = vm.hotelsReturned.hotels;
                                if (vm.hotels.length == 0) {
                                    dialogService.showDialog("Please search again.", "Our apologies, we do not have any hotels in this destination to accommodate your travel plans");
                                    vm.returnUserToIndex();
                                    return;
                                };
                                vm.show.processing = vm.show.processing ? false : true;
                                setSliderDefaults();
                                /*set flag to true so that results are shown in the UI*/
                                vm.show.resultsReturned = true;
                                vm.boundaries = vm.hotelsReturned.areas;
                                vm.amenities = vm.hotelsReturned.amenities;
                                setBoundaryListDefaults();
                                setAmenitiesListDefaults();
                                setCurrentHotelsList();
                                hotelresultsFactory.update(response);
                                vm.searchCompleted();
                            })
                            .error(function (error) {
                                vm.stopSpin();
                                vm.show.error.search = true;
                                vm.show.error.message = "Our apologies, it appears something went wrong with the search. Please recheck your criteria and search again. ";
                                vm.show.processing = false;
                                console.log("an error has occurred :" + JSON.stringify(error));
                            });
            }, 10);
            };
        };

        vm.popoverOptions = {
            'placement': "bottom",
            'title': "Hotel Description"

        };

        /*****Start Filters Section *****/

        /***** Start Hotel Brand and Name Text Search *****/
        /*default for search text*/
        vm.selectedSearch = "";

        function setCurrentHotelsList() {
            //console.log('setting current hotels');
            vm.currentHotels = [];
            if (vm.hotels) {
                angular.forEach(vm.hotels, function (hotel, key) {
                    //console.log('hotel chain : ' + JSON.stringify(hotel.hotel_snapshot, null, '\t'));
                    vm.currentHotels.push(hotel.hotel_snapshot.name);
                    vm.currentHotels.push(hotel.hotel_snapshot.chain_name);
                });
            }
        }

        /***** End Hotel Brand and Name Text Search*****/

        /***** Start Price Slider Filter *****/
        /*sets initial variables for the slider*/
        vm.min = 0;
        vm.max = 1000;
        vm.bottom = 0;
        vm.top = 1000;
        vm.newPrices = [];

        function setSliderDefaults() {
            /*sets variables for the slider based on hotel prices being returned*/
            var i,
                min,
                max,
                prices = [],
                memberPrices = [],
                marketPrices = [],
                dailyMemberPrices = [],
                dailyMarketPrices = [];

            for (i = 0; i < vm.hotels.length; i++) {
                memberPrices.push(vm.hotels[i].total_member_price);
                marketPrices.push(vm.hotels[i].Total_market_price);
                dailyMemberPrices.push(vm.hotels[i].daily_member_rate);
                dailyMarketPrices.push(vm.hotels[i].daily_market_rate);
            };
            if (vm.daily == 'false' || vm.daily == false) {
                if (vm.currentSession.display_options.display_type == 'discount' || vm.currentSession.display_options.display_type == 'dbc') {
                    prices = memberPrices;
                }
                else {
                    prices = marketPrices;
                }
            }
            else {
                if (vm.currentSession.display_options.display_type == 'discount' || vm.currentSession.display_options.display_type == 'dbc') {
                    prices = dailyMemberPrices;
                }
                else {
                    prices = dailyMarketPrices;
                }
            }

            min = Math.min.apply(null, prices);
            max = Math.max.apply(null, prices);
            min = Math.floor(min);
            max = Math.ceil(max);
            vm.bottom = min;
            vm.top = max;

            //Slider config with callbacks
            vm.slider = {
                options: {
                    floor: vm.bottom,
                    ceil: vm.top, //defaults to rz-slider-model
                    step: 1,
                    precision: 0,
                    translate: null,
                    id: null,
                    stepsArray: null,
                    draggableRange: false,
                    showSelectionBar: false,
                    hideLimitLabels: false,
                    readOnly: false,
                    disabled: false,
                    interval: 350,
                    showTicks: true,
                    showTicksValues: false,
                    scale: 1,
                    onStart: null,
                    onChange: null,
                    onEnd: null,
                }

            };

            /*redraws the slider. When the slider is used with ng-hide or ng-if then when it appears it doesn't draw correctly. This forces it to redraw correctly.
            this is a known issue with the rzslider. More documenation can be foudn here https://github.com/rzajac/angularjs-slider/issues/116.
            */
            $timeout(function() {
                $scope.$broadcast("reCalcViewDimensions");
            }, 10);
        };
        /***** End Price Slider Filter  *****/

        vm.setDialog = function() {
            dialogService.setDialogWidget(vm.messageDialog);
        };
        vm.setContent = function() {
            dialogService.setContentWidget(vm.contentDialog);
        };
        vm.setIframe = function() {
            dialogService.setIframeWidget(vm.contentIframe);
        };

        /***** star rating filter *****/

        /*filter rating*/
        vm.stars = [1, 2, 3, 4, 5];
        vm.ratings = [
            {
                name: "5 stars",
                value: 5
            },
            {
                name: "4 stars",
                value: 4
            },
            {
                name: "3 stars",
                value: 3
            },
            {
                name: "2 stars",
                value: 2
            },
            {
                name: "1 star",
                value: 1
            }
        ];

        /*default setting that allows the star rating filter to start with all hotel returned. This is the variable the filter works on.*/
        vm.starRating = 0;
        /*fucntion that allows star rating filter to be selected and passed to the filter.*/
        vm.setStarRatingFilter = function (rating) {
            vm.startSpin();
            if (!rating) {
                vm.selected = 0;
                vm.starRating = 0;
            }
            else {
                /*sets the current star rating filter*/
                vm.selected = rating;
                vm.starRating = rating.value;
            }
            vm.stopSpin();
        };

        vm.isActive = function(rating) {
            return vm.selected === rating;
        };

        /***** End Star Rating Filter*****/
        /***** Geoboundary (locations) filter *****/

        /*sets the default boundary for the boundary filter parent list. Gets the geoboundaryList array ready to be passed to the filter from the UI*/
        function setBoundaryListDefaults() {
            //TODO set boundary parent here
            var j, boundaryPackage;
            vm.geoboundaryList = [];
            //console.log(JSON.stringify(vm.boundaries))
            if (vm.boundaries) {
                for (var j = 0; j < vm.boundaries.length; j++) {

                    if (vm.boundaries[j].match == true) {
                        boundaryPackage = {
                            name: vm.boundaries[j].name,
                            id: vm.boundaries[j].id,
                            isChecked: true,
                            is_parent: vm.boundaries[j].is_parent
                        };
                        vm.geoboundaryList.push(boundaryPackage);
                    } else {

                        boundaryPackage = {
                            name: vm.boundaries[j].name,
                            id: vm.boundaries[j].id,
                            isChecked: false,
                            is_parent: vm.boundaries[j].is_parent
                        };
                        vm.geoboundaryList.push(boundaryPackage);
                    }
                }
            }
        }

        /***** End Geoboundary (Locations) Filter *****/

        /***** Start Amenities Filter*****/
        function setAmenitiesListDefaults() {
            var j, amenitiesPackage;
            vm.amenitiesList = [];
            if (vm.amenities) {
                for (var j = 0; j < vm.amenities.length; j++) {
                    amenitiesPackage = {
                        name: vm.amenities[j].name,
                        id: vm.amenities[j].amenity_id,
                        isChecked: false
                    };
                    vm.amenitiesList.push(amenitiesPackage);
                }
            }
            vm.filterAmenities = false;
        };

        vm.startFiltering = function() {
            vm.filterAmenities = true;
            //check to see if all check boxes for the filter are unchecked. If none are checked tell the filter that it shouldn't filter any amenities.
            var checked = document.querySelectorAll(".amenity > input:checked");
            if (checked.length == 0) {
                vm.filterAmenities = false;
            };
        };

        /***** End Amenities Filter*****/
        /*****End search filters*****/
    }

})();
