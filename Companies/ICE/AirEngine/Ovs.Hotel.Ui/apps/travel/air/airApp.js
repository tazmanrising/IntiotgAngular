
'use strict';
var AirApp = angular.module('airApp', [
    // Angular modules 
    'ui.router',
    'gettext',
    'angularSpinner',
    'kendo.directives',
    'mgcrea.ngStrap',
    'ngSanitize',

    // Custom modules 
    'displayOptionsDirectives',
    'commonFilters',

    // 3rd Party Modules
    'rzModule',
    'tmh.dynamicLocale',
    'ng-backstretch',
    'truncate',
    'timer'

])
    .config(configure);

configure.$inject = ['$stateProvider', '$urlRouterProvider', 'currentSession', 'appSettings'];

/*The templateUrl values come from the UserSettings.cs file*/
function configure($stateProvider, $urlRouterProvider, currentSession, appSettings) {

    var _templates = currentSession.display_options.templates;

    var airHeader = {
        templateUrl: _templates['air_header'] !== undefined ? _templates['air_header'] : "/apps/common/headers/default_header_dbc.html"
    };
    var airMenu = {
        templateUrl: _templates['air_menu'] !== undefined ? _templates['air_menu'] : "/apps/common/menus/default_menu.html"
    };
    var airFooter = {
        templateUrl: _templates['air_footer'] !== undefined ? _templates['air_footer'] : "/apps/common/footers/default_footer.html"
    };
    var airSearch = {
        templateUrl: _templates['air_search'] !== undefined ? _templates['air_search'] : "/apps/travel/air/search/air_default_search.html"
    };
    var airBody = {
        templateUrl: _templates['air_body'] !== undefined ? _templates['air_body'] : "/apps/travel/air/home/airdefault_merchandising_dbc.html"
    };

    var airResults = {
        templateUrl: _templates['air_search_results'] !== undefined ? _templates['air_search_results'] : "/apps/travel/air/search/searchresults/air_default_searchresults.html" // 
    };
    var airResultsComplete = {
        templateUrl: _templates['air_searchresults_complete'] !== undefined ? _templates['air_searchresults_complete'] : "/apps/travel/air/search/searchresults/complete/air_default_complete_trip.html" // 
    };
    var airResultsDepart = {
        templateUrl: _templates['air_searchresults_depart'] !== undefined ? _templates['air_searchresults_depart'] : "/apps/travel/air/search/searchresults/depart/air_default_depart.html" //
    };
    var airResultsReturn = {
        templateUrl: _templates['air_searchresults_return'] !== undefined ? _templates['air_searchresults_return'] : "/apps/travel/air/search/searchresults/return/air_default_return.html" // 
    };

    var airBook = {
        templateUrl: _templates['air_book'] !== undefined ? _templates['air_book'] : "/apps/travel/air/book/air_default_bookview.html" //
    };
    var airBookContact = {
        templateUrl: _templates['air_contact_info'] !== undefined ? _templates['air_contact_info'] : "/apps/travel/air/book/air_default_contactinfo.html" // 
    };
    var airBookSummary = {
        templateUrl: _templates['air_flight_summary'] !== undefined ? _templates['air_flight_summary'] : "/apps/travel/air/book/air_default_flightsummary.html" // 
    };
    var airBookTravelerInfo = {
        templateUrl: _templates['air_traveler_info'] !== undefined ? _templates['air_traveler_info'] : "/apps/travel/air/book/air_default_travelerinfo.html" // 
    };
    var airBookTermsAndConditions = {
        templateUrl: _templates['air_terms_conditions'] !== undefined ? _templates['air_terms_conditions'] : "/apps/travel/air/book/air_default_termandconditions.html" //
    };
    var airBookPaymentInfo = {
        templateUrl: _templates['air_payment_info'] !== undefined ? _templates['air_payment_info'] : "/apps/travel/air/book/air_default_payment.html"
    };

    var airConfirmation = {
        templateUrl: _templates['air_confirmation'] !== undefined ? _templates['air_confirmation'] : "/apps/travel/air/confirmation/air_default_confirmation.html"
    };

    var airConfirmationSummary = {
        templateUrl: _templates['air_confirmation_summary'] !== undefined ? _templates['air_confirmation_summary'] : "/apps/travel/air/confirmation/air_default_confirmationsummary.html" 
    };

    var airConfirmationPricing = {
        templateUrl: _templates['air_confirmation_pricing'] !== undefined ? _templates['air_confirmation_pricing'] : "/apps/travel/air/confirmation/air_default_confirmation_pricing.html"
    };

    var airReceipt = {
        templateUrl: _templates['air_receipt'] !== undefined ? _templates['air_receipt'] : "/apps/travel/air/receipt/airReceipt_resendReceipt.html"
    };

    $urlRouterProvider.otherwise("Air");

    $stateProvider.state('index',
    {
        url: "",
        views: {
            "airHeader": airHeader,
            "airMenu": airMenu,
            "airSearch@index": airSearch,
            "airBody": airBody,
            "airFooter": airFooter
        }
    })
    .state('searchresults', {
        url: "/searchresults",
        views: {
            "airHeader": airHeader,
            "airMenu": airMenu,
            "airSearch": airSearch,
            "airSearchResults": airResults,
            "airSearchResultsComplete@searchresults": airResultsComplete,
            "airSearchResultsDepart@searchresults": airResultsDepart,
            "airSearchResultsReturn@searchresults": airResultsReturn,
            "airFooter": airFooter
        }
    })
    .state('book', {
        url: "/book",
        params: {
            booking: {},
            search: {}
        },
        views: {
            "airHeader": airHeader,
            "airMenu": airMenu,
            "airBookView": airBook,
            "airBookContact@book": airBookContact,
            "airBookFlightSummary@book": airBookSummary,
            "airBookTravelerInfo@book": airBookTravelerInfo,
            "airBookTermsandconditions@book": airBookTermsAndConditions,
            "airBookPaymentInfo@book": airBookPaymentInfo,
            "airFooter": airFooter
        }
    })
    .state('confirmation', {
        url: "/confirmation",
        params: {
            bookingId: ''
        },
        views: {
            "airHeader": airHeader,
            "airMenu": airMenu,
            "airConfirmation": airConfirmation,
            "airConfirmationSummary@confirmation" : airConfirmationSummary,
            "airConfirmationPricing@confirmation": airConfirmationPricing,
            "airFooter": airFooter
        }
    })
    .state('receipt', {
        url: "/receipt/:memberId/:bookingId",
        views: {
            "airHeader": airHeader,
            "airMenu": airMenu,
            "airReceipt": airReceipt,
            "airFooter": airFooter
        }
    });

}

angular.module("airApp").run(function (gettextCatalog, currentSession) {
    gettextCatalog.currentLanguage = currentSession.display_options.locale;
})
/*resets defaults for the $datepicker that comes with AngularStrap.*/
    .config(function ($datepickerProvider) {
        angular.extend($datepickerProvider.defaults, {
            autoclose: true,
            keyboard: false
        });
    });