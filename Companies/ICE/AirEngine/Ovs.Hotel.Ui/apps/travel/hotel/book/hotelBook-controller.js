(function () {
    "use strict";

    angular
        .module("hotelApp")
        .controller("hotelBookController", hotelBookController);

    hotelBookController.$inject = [
        "$scope", "$location", "$timeout", "$state", "$anchorScroll", "cancelPolicyService", "searchFactory", "detailFactory", "usSpinnerService", "hotelBookService", "currentSession", "selectedRoomFactory", "cancelPolicyFactory", "dialogService", "confirmationFactory", "countriesAndStates"
    ];

    function hotelBookController($scope, $location, $timeout, $state, $anchorScroll, cancelPolicyService, searchFactory, detailFactory, usSpinnerService, hotelBookService, currentSession, selectedRoomFactory, cancelPolicyFactory, dialogService, confirmationFactory, countriesAndStates) {

        var book = this;
        var i, j, k, l, m, n, o, p, r;
        //used as the final object that's pushed to the book purchase call.
        book.purchase = {};
        book.guest = {};
        book.dbcId = "cu:e1:cur2";
        book.vcId = "c1:e1:cur1";
        book.whichPartial = '';
        /*Boolean to flag if results should be displayed in the UI*/
        book.show = {
            error: {
                invalidForm: false,
                firstName: false,
                lastName: false,
                email: false,
                address: false,
                city: false,
                state: false,
                zip: false,
                country: false,
                phone: false,
                ccType: false,
                ccNumber: false,
                ccExpMo: false,
                ccExpYear: false,
                ccSecNum: false,
                termsAgree: false,
                book: false,
                policy: false,
                billingAddress: false,
                billingCity: false,
                billingState: false,
                billingZip: false,
                billingCountry: false,
                billingPhone: false,
                message: ""
            }
        };

        book.currentSession = currentSession;
        //console.log('book - currentSession: ' + JSON.stringify(book.currentSession, null, '\t'));

        book.cancelPolicy = cancelPolicyFactory.policy || {};
        //console.log('book controller cancelPolicy : ' + JSON.stringify(book.cancelPolicy, null, '\t'));

        /*confirm search details*/
        var originalSearch = searchFactory.search || {};
        //console.log('search details : ' + JSON.stringify(originalSearch, null, '\t'));

        book.details = detailFactory.details || {};
        //console.log('book - detailFactory: ' + JSON.stringify(book.details, null, '\t'));

        book.room = selectedRoomFactory.roomDetails || {};
        //console.log('book - room factory : ' + JSON.stringify(book.room, null, '\t'));

        book.showDisclaimer = false;
        if (book.room.available_supplier_id === "expedia-net") {
            book.showDisclaimer = true;
        }

        book.currencyFormat = book.currentSession.display_options.options.currency_format || '';
        //sets the confirmation variables displayed in the price summary to values from search
        book.confirmDestination = originalSearch.destination;
        book.purchase.confirmCheckin = new Date(new Date(originalSearch.checkin).setHours(0, 0, 0, 0)).toJSON();
        book.purchase.confirmCheckout = new Date(new Date(originalSearch.checkout).setHours(0, 0, 0, 0)).toJSON();
        book.purchase.confirmAdults = originalSearch.numAdults;
        book.purchase.confirmChildren = originalSearch.childages;
        book.purchase.confirmRoomNum = originalSearch.numRooms;

        if (originalSearch.childages === "none") {
            book.purchase.confirmChildren = '';
        }

        // set "your price" to invalid value so we are sure it gets explicitly assigned
        book.purchase.yourPrice = -1;

        function startSpin() {
            usSpinnerService.spin("spinner-1");
        };

        function stopSpin() {
            usSpinnerService.stop("spinner-1");
        };

        /*********** Begin Form Validation **********************/
        //defalt variables for form validation
        //set states to default to US. 
        var selectedStates = countriesAndStates.usStates;
        //determines if state/province field should be shown in the UI. 
        book.requireStates = true;
        book.showStates = true;
        book.showZip = true;
        book.errors = [];
        book.termsAgree = false;
        //book.phoneMask = '1 000 000 0000';
        //var countries = countriesAndStates.countries;
        book.countryDataSource = new kendo.data.DataSource({
            data: countriesAndStates.countries,
            dataTextField: "Name",
            dataValueField: "Id",
            valuePrimitive: true
        });

        book.setInitialCountry = function () {
            //sets the initial billing country to US if the user profile is missing country data.
            if (!book.purchase.country) {
                book.purchase.country = 'US';
            }
            //sets the initial country ID if there isn't one.
            if (!book.purchase.billingCountry.Id) {
                for (var z = 0; z < countriesAndStates.countries.length; z++) {
                    if (countriesAndStates.countries[z].Id == book.purchase.billingCountry) {
                        book.purchase.billingCountry = countriesAndStates.countries[z];
                        //console.log('purchase country : ' + book.purchaseCountry);
                    }
                }
            }

            setInitialStates();
        };

        //using a similiar fucntion to getStates() however this initial set needs to be set on a timeout as it is 
        //attempting to load before Kendo and is causing errors. 
        function setInitialStates() {
            $timeout(function () {
                setStates();
            }, 500);
        }

        //called from hoteldefault_ccinput.html from the country drop down on k-on-change
        book.getStates = function () {
            if (!book.purchase.billingCountry.Id) {
                book.purchase.billingCountry.Id = book.purchase.country;
            };
            //documentation for masking can be found here http://docs.telerik.com/kendo-ui/controls/editors/maskedtextbox/overview

            setStates();
        };

        function setStates() {
            switch (book.purchase.billingCountry.Id) {
                case 'US':
                    book.requireStates = true;
                    book.showZip = true;
                    book.phoneMask = "1 000 000 0000";
                    book.billingPhone.setOptions({ mask: "1 000 000 0000" });
                    book.guestPhone.setOptions({ mask: "1 000 000 0000" });
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
                    book.billingPhone.setOptions({ mask: "1 000 000 0000" });
                    book.guestPhone.setOptions({ mask: "1 000 000 0000" });
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
                    book.guestPhone.setOptions({ mask: "52 999999 0000 0000" });
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
                        book.billingZip.setOptions({ mask: "LAaaaaaaa" });
                        //This mask has to allow for 2 different formats. 52 ## #### #### - 52 # ### #### #### (all numeric) 
                        book.billingPhone.setOptions({ mask: "44 999 999 00009" });
                        book.guestPhone.setOptions({ mask: "44 999 999 00009" });
                        break;
				case 'NZ':
                        book.requireStates = false;
                        book.showStates = false;
                        book.showZip = true;
						book.billingPhone.setOptions({ mask: "64 0 0000 0000" });
						book.guestPhone.setOptions({ mask: "64 0 0000 0000" });
						book.billingZip.setOptions({ mask: "0000" });	
                    break;
                case 'AU':
                    book.requireStates = true;
                    book.showZip = true;
                    //This mask has to allow for 2 different formats. 52 ## #### #### - 52 # ### #### #### (all numeric) 
                    book.billingPhone.setOptions({ mask: "61 00 0000 0000" });
                    book.guestPhone.setOptions({ mask: "61 00 0000 0000" });
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
                    book.billingPhone.setOptions({ mask: "####################" });
                    book.guestPhone.setOptions({ mask: "####################" });           
            }
        };

        //sets state dropdown menu to a default of US states. 
        book.usStateDataSource = new kendo.data.DataSource({
            data: selectedStates,
            dataTextField: "Name",
            dataValueField: "Id",
            valuePrimitive: true
        });
        //although it looks like redundant code, the state and country need to be set initially for load and then again after kendo loads as it erases the selection.
        //This has to do with load order. This is the quickest and easiest fix to state not being passed correctly. 
        book.purchase.billingState_province = book.purchase.state_province;
  
        book.validate = function (event) {
            event.preventDefault();
            if (book.validator.validate()) {
                $anchorScroll();
                book.bookRoom();
            }
            else {
                $anchorScroll();
                dialogService.showDialog("Input/Corrections Needed", "The fields with red text below them need values or corrections.");
                book.isDisabled = false;
            }
        };

        //validates the book page form. Does final validation after the purchase button is hit. 
        // #TODO: 12-26-2016 => This function is not referenced anywhere... remove function
        book.validateForm = function () {
            if (book.bookForm.$invalid) {
                book.show.error.invalidForm = true;
                book.show.error.message = "We have encountered the following problems with your form. Please correct them and submit again. ";
            }
            if (book.bookForm.inputFirstName.$invalid) {
                book.show.error.firstName = true;
                book.errors.push("The first name field is required");
            }
            if (book.bookForm.inputLastName.$invalid) {
                book.show.error.lastName = true;
                book.errors.push("The last name field is required");
            }
            if (book.bookForm.confirmationEmail.$invalid) {
                book.show.error.email = true;
                book.errors.push("The confirmation email field is required");
            }
            if (book.bookForm.address.$invalid) {
                book.show.error.address = true;
                book.errors.push("The address field is required");
            }
            if (book.bookForm.city.$invalid) {
                book.show.error.city = true;
                book.errors.push("The city field is required");
            }
            if (book.bookForm.state.$invalid) {
                book.show.error.state = true;
                book.errors.push("The state field is required");
            }
            if (book.bookForm.zip.$invalid) {
                book.show.error.zip = true;
                book.errors.push("The zip code field is required");
            }
            if (book.bookForm.country.$invalid) {
                book.show.error.country = true;
                book.errors.push("The country field is required");
            }
            if (book.bookForm.phone.$invalid) {
                book.show.error.phone = true;
                book.errors.push("The phone field is required");
            }
            if (book.bookForm.ccType.$invalid) {
                book.show.error.ccType = true;
                book.errors.push("The credit card type field is required");
            }
            if (book.bookForm.ccNumber.$invalid) {
                book.show.error.ccNumber = true;
                book.errors.push("The credit card number field is required");
            }
            if (book.bookForm.ccExpMo.$invalid) {
                book.show.error.ccExpMo = true;
                book.errors.push("The credit card expiration month field is required");
            }
            if (book.bookForm.ccExpYear.$invalid) {
                book.show.error.ccExpYear = true;
                book.errors.push("The credit card expiration field is required");
            }
            if (book.bookForm.ccSecurityCode.$invalid) {
                book.show.error.ccSecNum = true;
                book.errors.push("The credit card security code field is required");
            }
            if (book.bookForm.billingStreet1.$invalid) {
                book.show.error.billingStreet1 = true;
                book.errors.push("The billing address field is required");
            }
            if (book.bookForm.billingCity.$invalid) {
                book.show.error.billingCity = true;
                book.errors.push("The billing city field is required");
            }
            if (book.bookForm.billingState_province.$invalid) {
                book.show.error.billingState_province = true;
                book.errors.push("The billing zip field is required");
            }
            if (book.bookForm.billingCountry.$invalid) {
                book.show.error.billingCountry = true;
                book.errors.push("The billing country field is required");
            }
            if (book.bookForm.billingPhone.$invalid) {
                book.show.error.billingPhone = true;
                book.errors.push("The billing phone number field is required");
            }
            if (book.bookForm.termsAgree.$invalid || book.termsAgree === false) {
                book.show.error.termsAgree = true;
                book.errors.push("The terms and conditions must be accepted");
            }
            if (book.errors.length > 0) {
                return false;
            };

        };
        /*********** End Form Validation **********************/

        /*********** Begin Personal Information *****************/
        book.purchase.confirmEmails = [];
        book.purchase.firstName = book.currentSession.member_info.first_name;
        book.purchase.lastName = book.currentSession.member_info.last_name;
        book.purchase.cardName = book.purchase.firstName + " " + book.purchase.lastName;

        if (book.currentSession.member_info.addresses) {
            for (j = 0; j < book.currentSession.member_info.addresses.length; j++) {
                if (book.currentSession.member_info.addresses[j].is_primary === true || book.currentSession.member_info.addresses[j].is_primary === "true") {
                    book.purchase.street1 = book.currentSession.member_info.addresses[j].street1;
                    book.purchase.street2 = book.currentSession.member_info.addresses[j].street2;
                    book.purchase.street3 = book.currentSession.member_info.addresses[j].street3;
                    book.purchase.city = book.currentSession.member_info.addresses[j].city;
                    book.purchase.state_province = book.currentSession.member_info.addresses[j].state_province;
                    book.purchase.postal_code = book.currentSession.member_info.addresses[j].postal_code;
                    book.purchase.country = book.currentSession.member_info.addresses[j].country;
                    book.purchase.state_code = book.currentSession.member_info.addresses[j].state_code;
                    book.purchase.country_code = book.currentSession.member_info.addresses[j].country_code;
                    break;
                }
            };
        };

        if (book.currentSession.member_info.email_addresses) {
            for (k = 0; k < book.currentSession.member_info.email_addresses.length; k++) {
                if (book.currentSession.member_info.email_addresses[k].is_primary === true || book.currentSession.member_info.email_addresses[k].is_primary === "true") {
                    book.purchase.email = book.currentSession.member_info.email_addresses[k].address;
                    book.guest.email = book.purchase.email;
                };
            };
        };

        if (book.currentSession.member_info.phone_numbers) {
            for (l = 0; l < book.currentSession.member_info.phone_numbers.length; l++) {
                if (book.currentSession.member_info.phone_numbers[l].IsPrimary === true || book.currentSession.member_info.phone_numbers[l].IsPrimary === "true") {
                    book.purchase.phone = book.currentSession.member_info.phone_numbers[l].Number;
                    book.guest.phone = book.purchase.phone;
                }
            };
        };
      
        book.purchase.cardFirstName = book.purchase.firstName;
        book.purchase.cardLastName = book.purchase.lastName;
        book.purchase.billingStreet1 = book.purchase.street1;
        book.purchase.billingStreet2 = book.purchase.street2;
        book.purchase.billingCity = book.purchase.city;
        book.purchase.billingState_province = book.purchase.state_province;
        book.purchase.billingZip = book.purchase.postal_code;
        book.purchase.billingCountry = book.purchase.country;
        book.purchase.billingPhone = book.purchase.phone;


        //called from the bookRoom function. Setting up to be easily reconfigured for multiple confirmation emails.
        function processConfirmEmails() {
            //if multiple confirmtion emails will be sent then set book.purchase.confirmEmails to an array of strings. 
            book.purchase.confirmEmails.push(book.confirmEmail);
        };

        /***********  End Personal Information  *****************/

        /*********** Begin credit card information **************/
        var arrayLength = book.currentSession.member_info.credit_cards_accepted.length;
        var ccItems = [];
        for (var i = 0; i < arrayLength; i++) {
            var item = { Name: book.currentSession.member_info.credit_cards_accepted[i].credit_card_name, Id: book.currentSession.member_info.credit_cards_accepted[i].card_type };
            ccItems.push(item);
        }
        book.ccTypesDataSource = new kendo.data.DataSource({
            data: ccItems,
            dataTextField: "Name",
            dataValueField: "Id",
            valuePrimitive: true
        });
        //book.ccTypesDataSource.data = ccItems;
        book.ccPreferredType = "visa";
        book.months = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
        //set default date for the credit card month
        book.purchase.expMo = 1;
        var currYear = new Date().getFullYear();
        //set the credit card expiration years in the dropdown to 20 years.
        book.ccYears = [];
        for (o = 0; o < 20; o++) {
            book.ccYears.push(currYear + o);
        };
        //set default year for the credit card year
        book.purchase.expYear = currYear;
        book.ccPromo;
        book.captureCC = function (ccInfo) {
            if (book.ccPreferredType === 'sears') {
                book.validateNumber();
            };
            book.ccPromo = ccInfo.promo_message;
            book.purchase.ccName = ccInfo.credit_card_name;
        };

        //TODO validate that cc date is not before today

        book.validateNumber = function () {
            if (book.purchase.ccNumber) {
                if (book.ccPreferredType === 'sears') {
                    //basis for this algorithm can be found here
                    mod10Validation(book.purchase.ccNumber);
                }
            }
        };
        //http://www.codeproject.com/Tips/515367/Validate-credit-card-number-with-Mod-algorithm
        function mod10Validation(ccNumber) {
            ccNumber = ccNumber + ''; //Convert to string
            var weight = 2,
                sum = 0, digit,
                isMod10 = false,
                cardCount;
            for (cardCount = parseInt(ccNumber.length) ; cardCount > 1; cardCount--) {
                digit = parseInt((ccNumber.charAt(cardCount - 2)));
                digit = digit * weight;
                /* add tens digit to ones digit to the sum */
                sum = sum + Math.floor(digit / 10) + (digit % 10);
                weight = weight == 2 ? 1 : 2;
            }
            var lastNumber = parseInt((ccNumber.charAt(parseInt(ccNumber.length) - 1)));
            sum += parseInt(lastNumber);
            if (sum % 10 === 0) {
                isMod10 = true;
            }
            else {
                return false;
            };
            return isMod10;
        }
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
                        book.security_code.setOptions({ mask: "0000" });
                    } else {
                        book.security_code.setOptions({ mask: "000" });
                    }
                };
                return true;
            }
        };

        /*********** End credit card information **************/

        /*********** Begin taxes and supplements **************/

        if (book.room.available_total_member_rate) {
            book.memberTotal = book.room.available_total_member_rate + book.room.available_total_member_tax;
            book.marketTotal = book.room.available_total_market_rate + book.room.available_total_market_tax;
        }

        book.marketRatesupplimentalFees =[];
        book.membersupplimentalFees = [];
        book.marketTaxDisplay = 0;
        book.memberTaxDisplay = 0;
        book.marketAllFeesTotal = 0;

        if (book.cancelPolicy.MarketPriceBreakdown) {

            angular.forEach(book.cancelPolicy.MarketPriceBreakdown.Surcharges, function (value, key) {
                book.marketTaxDisplay += value.Amount;
                book.marketAllFeesTotal += value.Amount;
            });

            angular.forEach(book.cancelPolicy.MarketPriceBreakdown.SpecialSurcharges, function (value, key) {
                book.marketRatesupplimentalFees.push(value);
            });

            angular.forEach(book.cancelPolicy.SupplierPriceBreakdown.Surcharges, function (value, key) {
                book.memberTaxDisplay += value.Amount;
            });

            angular.forEach(book.cancelPolicy.SupplierPriceBreakdown.SpecialSurcharges, function (value, key) {
                book.membersupplimentalFees.push(value);
            });
        }

        book.marketTotal = book.room.available_total_market_rate + book.marketAllFeesTotal;

        /*********** End taxes and supplements **************/

        /************ Begin Alternative Currencies*************/
        book.alternativeMarginSelected = 0;
        book.currenciesUsed = [];
        book.initialVC = 0
        book.initialDBC = 0;
        //sets DBC slider limit
        book.sliderCeil = Math.floor(book.room.available_total_savings);
        book.vcSliderCeil;
        //sets DBC initial slider value
        book.sliderValue = Math.floor(book.room.available_total_savings);
        //set VC initial slider value
        book.vcSliderValue = 0;
        book.maxVC;
        book.showVC = false;
        book.showDBC = false;

        book.setInitialCurrencies = function () {
            for (n = 0; n < book.currentSession.member_info.alternative_hard_currencies.length; n++) {
                //vacation cash ID
                if (book.currentSession.member_info.alternative_hard_currencies[n].id == book.vcId) {
                    book.initialVC = book.currentSession.member_info.alternative_hard_currencies[n].balance;
                    //vcSliderCeil gets manipulated into a new value, this is the starting value.
                    if (book.initialVC > 0 && book.currentSession.member_info.alternative_hard_currencies[n].redeem_for_hotel) {
                        book.showVC = true;
                    };
                }
            };
            for (p = 0; p < book.currentSession.member_info.alternative_margin_currencies.length; p++) {
                if (book.currentSession.member_info.alternative_margin_currencies[p].id == book.dbcId) {
                    book.initialDBC = book.currentSession.member_info.alternative_margin_currencies[p].balance;
                    if (book.initialDBC > 0) {
                        book.showDBC = true;
                    };
                }
            };

            if (book.currentSession.display_options.display_type == 'dbc' || book.currentSession.display_options.display_type == 'retail') {
                book.maxVC = book.room.available_total_market_rate;
            }
            else if (book.currentSession.display_options.display_type == 'discount') {
                book.maxVC = book.room.available_total_member_rate;
            }

            if (book.initialVC > book.maxVC) {
                book.vcSliderCeil = Math.floor(book.maxVC);
            }
            else {
                book.vcSliderCeil = book.initialVC;
            }
            angular.forEach(book.currentSession.member_info.alternative_hard_currencies, function (value, key) {
                if(value.redeem_for_hotel == false){
                
                }

                book.dbcTaxTotal += value.Amount;
                //retail membership is using market rates for 1.0
                book.retailTaxTotal += value.Amount;
            });

            if (book.cancelPolicy.MarketPriceBreakdown) {
                if (book.currentSession.display_options.display_type == 'cashback') {
                    book.purchase.yourPrice = book.marketTotal;
                }
                else if (book.currentSession.display_options.display_type == 'retail') {
                    book.purchase.yourPrice = book.marketTotal;
                }
            }

            if (book.initialDBC == 0 && book.initialVC == 0) {
                if(book.cancelPolicy.MarketPriceBreakdown){
                    book.dbcPrice = book.marketTotal;
                    book.memberPrice = book.memberTotal;
                    if (book.currentSession.display_options.display_type == 'dbc') {
                        book.purchase.yourPrice = book.dbcPrice;
                    }
                    else if (book.currentSession.display_options.display_type == 'discount') {
                        book.purchase.yourPrice = book.memberPrice;
                    }
            }  
        }
           
        };

        book.setSliderValues = function (balance, amount, id) {
            //TODO compare against currentSession.member_info.max_dbc_spend_allowed
            if (id === book.dbcId) {
                if (balance < amount) {
                    amount = balance;
                    book.sliderValue = balance;
                    book.sliderCeil = balance;
                };
            }
        };

        //called from the book page hoteldefault_vcinput.html and hoteldefault_dbcinput.html partials. Called on start and on end of slider changes.
        book.captureMarginUsed = function (label, balance, id, amount) {
            //Boolean flag that determines if the alternative currency is being used already and it should be over written and not added. 
            var exists = false;

            //null handling
            if (!id) {
                id: ""
            };
            if (!balance) {
                balance: 0
            };
            if (!amount) {
                amount = 0
            };
            if (!label) {
                label = "Alternative Points Currency"
            };

            //object that will be added to the alternative currencies added if it is new and not already in the list of currencies being used. 
            var newCurrency = {
                'id': id,
                'label': label,
                'amount': amount,
            };


            //if ID is for VC
            if (id == book.vcId) {
                //if the DBC balance on the user account is less than the daily savings balance then reset the amount allowed on the slider to the balance amount. 
                if (balance < amount) {
                    amount = balance;
                    book.vcSliderValue = Math.floor(balance);
                    book.vcSliderCeil = balance;
                    //force the slider to recalculate its min and max
                    $timeout(function () {
                        $scope.$broadcast("reCalcViewDimensions");
                    }, 100);
                };
            };
            //if ID is for DBC
            if (id == book.dbcId) {
                //if the DBC balance on the user account is less than the daily savings balance then reset the amount allowed on the slider to the balance amount. 
                if (balance < amount) {
                    amount = balance;
                    book.sliderValue = balance;
                    book.sliderCeil = balance;
                    //force the slider to recalculate its min and max
                    $timeout(function () {
                        $scope.$broadcast("reCalcViewDimensions");
                    }, 100);
                };
            };
            //if this is the page init then set the currencies to the currency list.
            if (book.currenciesUsed.length == 0) {
                book.currenciesUsed.push(newCurrency);
            };

            //for each currency used in the currency list loop through and see if it exists already. If it does then overwrite the amount
            //with the newly changed amount. 
            for (r = 0; r < book.currenciesUsed.length; r++) {
                if (book.currenciesUsed[r].id === id) {
                    exists = true;
                    for (var prop in book.currenciesUsed[r]) {
                        if (prop == "label" || prop == "id") {
                            continue;
                        }
                        book.currenciesUsed[r][prop] = amount;
                        book.slider = amount;
                        break;
                    }
                }
            }
            if (exists === false) {
                book.currenciesUsed.push(newCurrency);
            };

            finalAltCurrencyProcessing(book.currenciesUsed);
            //console.log('currenciesUsed : ' + JSON.stringify(book.currenciesUsed));
        };
        book.displayInventoryDisclaimer = function () {
            dialogService.showDialog("Details", "The Customer agrees that Affiliate may transfer personal data belonging to the Customer and other persons on behalf of whom the Customer is making a booking of EAN Travel Products to EAN and/or its Corporate Affiliates for the purposes of facilitating the booking and providing after sales support (if any) of those EAN Travel Products.");
        };

        //sets the value of the alternative margins in the case that the entire balance needs to be used for the transaction.
        book.getAlternativeMarginUsage = function (label, id, balance, useCurrency) {

            if (useCurrency === false || useCurrency === "false") {
                balance = 0;
            }
            book.captureMarginUsed(label, balance, id, balance);
        };

        /************ End Alternative Currencies *************/
        /******* Begin transaction totals *******/
        book.finalDBC = 0,
            book.finalDbcLabel = "";
        book.finalVC = 0;
        book.finalVcLabel = "";

        function finalAltCurrencyProcessing(currenciesUsed) {
            var m;
            for (m = 0; m < currenciesUsed.length; m++) {
                switch (currenciesUsed[m].id) {
                    //DBC ID
                    case book.dbcId:
                        book.finalDBC = currenciesUsed[m].amount;
                        book.finalDbcLabel = currenciesUsed[m].label;
                        book.purchase.finalDBC = book.finalDBC;
                        book.purchase.finalDbcLabel = book.finalDbcLabel;
                        break;
                        //Vacation Cash ID    
                    case book.vcId:
                        book.finalVC = currenciesUsed[m].amount;
                        book.finalVcLabel = currenciesUsed[m].label;
                        book.purchase.finalVC = book.finalVC;
                        book.purchase.finalVcLabel = book.finalVcLabel;
                        break;
                }
            };
            book.checkAltCurrencyTotals();
            if (book.cancelPolicy.MarketPriceBreakdown) {
                book.dbcPrice = book.marketTotal - book.finalDBC - book.finalVC;
                book.memberPrice = book.memberTotal - book.finalDBC - book.finalVC;
                book.retailPrice = book.marketTotal -book.finalVC;

                if (book.currentSession.display_options.display_type == 'dbc') {
                    book.purchase.yourPrice = book.dbcPrice;
                    confirmationFactory.originalValues.surcharges = book.marketRatesupplimentalFees;
                }
                else if (book.currentSession.display_options.display_type == 'discount') {
                    book.purchase.yourPrice = book.memberPrice;
                    confirmationFactory.originalValues.surcharges = book.membersupplimentalFees;
                }
                else if (book.currentSession.display_options.display_type == 'retail') {
                    book.purchase.yourPrice = book.retailPrice;
                    confirmationFactory.originalValues.surcharges = book.marketRatesupplimentalFees;
                }
                else if (book.currentSession.display_options.display_type == 'cashback') {
                    book.purchase.yourPrice = book.marketTotal;
                    book.purchase.cashbackEarned = book.room.available_total_savings;
                    confirmationFactory.originalValues.surcharges = book.marketRatesupplimentalFees;
                }
            }
        };

        book.checkAltCurrencyTotals = function () {

            if (book.currentSession.display_options.display_type == 'dbc') {
                book.maxVC = book.room.available_total_market_rate - book.finalDBC;
            }
            else if (book.currentSession.display_options.display_type == 'discount') {
                book.maxVC = book.room.available_total_member_rate - book.finalDBC;
            }
            else if (book.currentSession.display_options.display_type == 'retail') {
                book.maxVC = book.room.available_total_market_rate;
            }

            if (book.vcSliderValue == book.maxVC || book.vcSliderValue > 0) {
                book.showAltCurrencyError = false;
            }
            if (book.vcSliderValue > book.maxVC) {
                book.showAltCurrencyError = true;
                book.vcSliderValue = Math.floor(book.maxVC);
            }
        };

        book.dbcTaxTotal = 0;
        book.memberTaxTotal = 0;
        book.retailTaxTotal = 0;
        //if the cancel call is populated
        if (book.cancelPolicy.MarketPriceBreakdown) {
            angular.forEach(book.cancelPolicy.MarketPriceBreakdown.Surcharges, function (value, key) {
                book.dbcTaxTotal += value.Amount;
                //retail membership is using market rates for 1.0
                book.retailTaxTotal += value.Amount;
            });
            angular.forEach(book.cancelPolicy.SupplierPriceBreakdown.Surcharges, function (value, key) {
                book.memberTaxTotal += value.Amount;
            });
    
        }

        /******* End transaction totals *******/
        /************* Begin Cancel Policy Call ********************/
        book.chooseRoom = function (room) {
            startSpin();
            selectedRoomFactory.update(room);
            book.getCancelPolicy = cancelPolicyService.getCancelDetails()
                .success(function (response) {
                    if (response.ApiResultCode === "OK") {
                        book.cancelPolicy = response;
                        //console.log('cancel Policy response : ' + JSON.stringify(book.cancelPolicy, null, '\t'));
                        stopSpin();
                        $state.go("book");
                    }
                    else {
                        book.show.error.policy = true;
                        stopSpin();
                        dialogService.showDialog("Error", "We are unable to confirm this room at this time. Please select a different hotel or different room type to complete your reservation.");
                    }
                })
                .error(function (error) {
                    book.show.error.policy = true;
                    stopSpin();
                    dialogService.showDialog("Error", "Our apologies, there's been an error retrieving the details for this room.");
                });

        };

        /************* End Cancel Policy Call ********************/

        function billingFieldProcessing() {
            book.purchase.billingCountry = book.purchase.billingCountry.Id;
            book.purchase.country = book.purchase.billingCountry;
            book.purchase.state_province = book.purchase.billingState_province;
            if (!book.requireStates) {
                book.purchase.billingState_province = ' ';
            };
            book.purchase.ccName = book.ccPreferredType;
        };

        /************* Begin Purchase Call ********************/
        //variable used to display final purchase price to the UI
        function confirmationValues() {

            if (book.currentSession.display_options.options.show_bundled_price == 'true') {
                confirmationFactory.originalValues.bundled = true;
                confirmationFactory.originalValues.bundledRate = book.room.available_total_market_rate + book.room.available_total_market_tax;
            }
            else {
                confirmationFactory.originalValues.bundled = false;
                confirmationFactory.originalValues.marketRate = book.room.available_total_market_rate;
                confirmationFactory.originalValues.marketTaxes = book.room.available_total_market_tax;
            }

            confirmationFactory.originalValues.dbcLabel = book.finalDbcLabel;
            confirmationFactory.originalValues.dbcApplied = book.finalDBC;
            confirmationFactory.originalValues.vcLabel = book.finalVcLabel;
            confirmationFactory.originalValues.vcApplied = book.finalVC;
            confirmationFactory.originalValues.customerPaid = book.purchase.yourPrice;

            if (book.currentSession.display_options.display_type == 'cashback') {
                confirmationFactory.originalValues.cashBackEarned = book.room.available_total_savings;
                confirmationFactory.originalValues.cashBackLabel = book.currentSession.display_options.labels.earned;
            }
            else {
                confirmationFactory.originalValues.cashBackEarned = 0;
                confirmationFactory.originalValues.cashBackLabel = '';
            }
        };

        book.bookRoom = function () {
            startSpin();
            book.isDisabled = true;
            if (book.ccPreferredType === 'sears') {
                book.validateNumber();
            };
            finalAltCurrencyProcessing(book.currenciesUsed);
            confirmationValues();
            processConfirmEmails();
            book.purchase.marketRate = book.room.available_total_market_rate;
            book.purchase.marketTax = book.room.available_total_market_tax;
            billingFieldProcessing();
            //console.log(JSON.stringify(book.purchase, null, '\t')); 
            book.getConfirmation = hotelBookService.makePurchase(book.purchase)
                .success(function (response) {
                    book.getConfirmation = response;
                    //console.log(response);
                    stopSpin();
                    //if we are getting an error that is coming from the back end but not a html error. 
                    if (book.getConfirmation.ApiResultCode !== "OK") {
                        dialogService.showDialog("Reservation Issue", "We apologize, but there has been a problem with your reservation - " +book.getConfirmation.ApiClientResultMessage + " debug - " +book.getConfirmation.ApiDebugResultMessage);
                        book.isDisabled = false;
                        $state.go("book");
                    } else {
                        $state.go("confirmation");
                }
            })
                .error(function (error) {
                    dialogService.showDialog("Reservation Error", "We apologize, but there has been an error while processing your reservation.");
                    book.isDisabled = false;
                    $state.go("book");
                    stopSpin();
        });
        };

            /************* End Purchase Call ********************/

            /*******Begin TCPA optin**********/
            /*******end TCPA optin**********/


    };

})();