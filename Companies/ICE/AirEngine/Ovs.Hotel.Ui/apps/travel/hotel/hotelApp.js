
'use strict';
var HotelApp = angular.module('hotelApp', [
    // Angular modules 
    'ui.router',
    'gettext',
    'angularSpinner',
    'kendo.directives',
    'mgcrea.ngStrap',
    'ngSanitize',

    // Custom modules 
    'hotelSearchDirectives',
    'hotelSearchFilters',
    'displayOptionsDirectives',

    // 3rd Party Modules
    'logglyLogger',
    'rzModule',
    'tmh.dynamicLocale',
    'ng-backstretch',
    'swAngularPopover',
    'truncate',
    'timer'
 
]).config(configure);

configure.$inject = [
    '$stateProvider', '$urlRouterProvider', 'currentSession', 'appSettings', 'LogglyLoggerProvider'];
/*The templateUrl values come from the UserSettings.cs file*/
function configure($stateProvider, $urlRouterProvider, currentSession, appSettings, LogglyLoggerProvider) {

    // see https://github.com/ajbrown/angular-loggly-logger for loggly configuration options

    LogglyLoggerProvider
        .inputToken('ad551207-9dcf-4501-960a-a7a9f1dc8ed9')
        .loggingEnabled(appSettings['LoggingEnabled'] === 'true')
        .inputTag(appSettings['LoggingTags'])
        .sendConsoleErrors(true);

    //console.log('config :' + JSON.stringify(currentSession, null, '\t'));

    $urlRouterProvider.otherwise("Hotel");
    $stateProvider.state('index', {
        url: "",
        views: {
            "hotelHeader": { templateUrl: currentSession.display_options.templates['hotel_header'] },
            "hotelMenu": { templateUrl: currentSession.display_options.templates['hotel_menu'] },
            "embeddedMenu@index": { templateUrl: currentSession.display_options.templates['hotel_embedded_menu'] },
            "hotelSearch@index": { templateUrl: currentSession.display_options.templates['hotel_search'] },
            "hotelBody": { templateUrl: currentSession.display_options.templates['hotel_body'] },
            //"hotelSearch@hotelBody": { templateUrl: currentSession.display_options.templates['hotel_search'] },
            "hotelFooter": { templateUrl: currentSession.display_options.templates['hotel_footer'] }
        }
    })
        .state('searchresultslist', {
            url: "/searchresultslist",
            views: {
                "hotelHeader": { templateUrl: currentSession.display_options.templates['hotel_header'] },
                "hotelMenu": { templateUrl: currentSession.display_options.templates['hotel_menu'] },
                "embeddedMenu@searchresultslist": { templateUrl: currentSession.display_options.templates['hotel_embedded_menu'] },
                "hotelSearch": { templateUrl: currentSession.display_options.templates['hotel_search'] },
                "hotelSearchResultsList": { templateUrl: currentSession.display_options.templates['hotel_searchresultslist'] },
                "hotelSearchResultsListDetail@searchresultslist": { templateUrl: currentSession.display_options.templates['hotel_searchresults_listdetail'] },
                "hotelFooter": { templateUrl: currentSession.display_options.templates['hotel_footer'] }
            }
        }
        )
        //grid view
        .state('searchresultsgrid', {
            url: "/searchresultsgrid",
            views: {
                "hotelHeader": { templateUrl: currentSession.display_options.templates['hotel_header'] },
                "hotelMenu": { templateUrl: currentSession.display_options.templates['hotel_menu'] },
                "embeddedMenu@searchresultsgrid": { templateUrl: currentSession.display_options.templates['hotel_embedded_menu'] },
                "hotelSearch": { templateUrl: currentSession.display_options.templates['hotel_search'] },
                "hotelSearchResultsGrid": { templateUrl: currentSession.display_options.templates['hotel_searchresultsgrid'] },
                "hotelSearchResultsGridDetail@searchresultsgrid": { templateUrl: currentSession.display_options.templates['hotel_searchresults_griddetail'] },
                "hotelFooter": { templateUrl: currentSession.display_options.templates['hotel_footer'] }
            }
        }
        )
        //map view
        .state('searchresultsmap', {
            url: "/searchresultsmap",
            views: {
                "hotelHeader": { templateUrl: currentSession.display_options.templates['hotel_header'] },
                "hotelMenu": { templateUrl: currentSession.display_options.templates['hotel_menu'] },
                "embeddedMenu@searchresultsmap": { templateUrl: currentSession.display_options.templates['hotel_embedded_menu'] },
                "hotelSearch": { templateUrl: currentSession.display_options.templates['hotel_search'] },
                "hotelSearchResultsMap": { templateUrl: currentSession.display_options.templates['hotel_searchresults_map'] },
                "hotelSearchResultsMapDetail@searchresultsmap": { templateUrl: currentSession.display_options.templates['hotel_searchresults_mapdetail'] },
                "hotelFooter": { templateUrl: currentSession.display_options.templates['hotel_footer'] }
            }
        }
        )
         .state("hoteldetail", {
             url: "/hoteldetail",
             views: {
                 "hotelHeader": { templateUrl: currentSession.display_options.templates['hotel_header'] },
                 "hotelMenu": { templateUrl: currentSession.display_options.templates["hotel_menu"] },
                 "embeddedMenu@hoteldetail": { templateUrl: currentSession.display_options.templates['hotel_embedded_menu'] },
                 "hotelDetailView": { templateUrl: currentSession.display_options.templates["hotel_detailview"] },
                 "hotelRoomDetail@hoteldetail": { templateUrl: currentSession.display_options.templates["hotel_roomdetail"] },
                 "hotelFooter": { templateUrl: currentSession.display_options.templates["hotel_footer"] }
             }
         }
        )
        .state("book", {
            url: "/book",
            views: {
                "hotelBookHeader@book": { templateUrl: currentSession.display_options.templates["hotel_book_header"] },
                "hotelMenu": { templateUrl: currentSession.display_options.templates['hotel_menu'] },
                "embeddedMenu@book": { templateUrl: currentSession.display_options.templates['hotel_embedded_menu'] },
                "hotelBookView": { templateUrl: currentSession.display_options.templates["hotel_book"] },
                "hotelBookPriceBar@book": { templateUrl: currentSession.display_options.templates["hotel_book_pricebar"] },
                "hotelPriceSummary@book": { templateUrl: currentSession.display_options.templates["hotel_price_summary"] },
                "hotelBookCc@book": { templateUrl: currentSession.display_options.templates["hotel_book_cc"] },
                "hotelBookDbc@book": { templateUrl: currentSession.display_options.templates["hotel_book_dbc"] },
                "hotelBookVc@book": { templateUrl: currentSession.display_options.templates["hotel_book_vc"] },
                "hotelBookPoints@book": { templateUrl: currentSession.display_options.templates["hotel_book_points"] },
                "hotelFooter": { templateUrl: currentSession.display_options.templates["hotel_footer"] }
            }
        }
        ).state("confirmation", {
            url: "/confirmation",
            views: {
                "hotelHeader": { templateUrl: currentSession.display_options.templates['hotel_header'] },
                "hotelMenu": { templateUrl: currentSession.display_options.templates['hotel_menu'] },
                "embeddedMenu@confirmation": { templateUrl: currentSession.display_options.templates['hotel_embedded_menu'] },
                "hotelConfirmation": { templateUrl: currentSession.display_options.templates["hotel_confirmation"] },
                "hotelFooter": { templateUrl: currentSession.display_options.templates["hotel_footer"] }
            }
        }
        ).state("review", {
            url: "/review",
            views: {
                "hotelHeader": { templateUrl: currentSession.display_options.templates['hotel_header'] },
                "hotelReview": { templateUrl: currentSession.display_options.templates["hotel_review"] },
                "hotelFooter": { templateUrl: currentSession.display_options.templates["hotel_footer"] }
            }
        }
        )
        .state("cancel", {
            url: "/cancel/:memberId/:bookingId",
            views: {
                "hotelHeader": { templateUrl: currentSession.display_options.templates['hotel_header'] },
                "hotelCancel": { templateUrl: currentSession.display_options.templates["hotel_cancel"] },
                "hotelFooter": { templateUrl: currentSession.display_options.templates["hotel_footer"] }
            }
        }
        )
          .state("receipt", {
              url: "/receipt/:memberId/:bookingId",
              views: {
                  "hotelHeader": { templateUrl: currentSession.display_options.templates['hotel_header'] },
                  "hotelReceipt": { templateUrl: currentSession.display_options.templates["hotel_receipt"] },
                  "hotelFooter": { templateUrl: currentSession.display_options.templates["hotel_footer"] }
              }
          }
        )
        .state("footerPage", {
            url: "/footerPage/:itemId",
            views: {
                "hotelHeader": { templateUrl: currentSession.display_options.templates['hotel_header'] },
                "hotelMenu": { templateUrl: currentSession.display_options.templates["hotel_menu"] },
                "hotelFooterPage": { templateUrl: currentSession.display_options.templates["hotel_footer_page"] },
            }
        }
        )
        .state('clubSearch', {
            url: "/clubSearch/:destination/:lat/:lng/:radius/:checkin/:checkout/:numRooms/:numAdults/:children/:userid/:locale/:currencycode",
            views: {
                "hotelHeader": { templateUrl: currentSession.display_options.templates['hotel_header'] },
                "hotelMenu": { templateUrl: currentSession.display_options.templates['hotel_menu'] },
                "embeddedMenu@clubSearch": { templateUrl: currentSession.display_options.templates['hotel_embedded_menu'] },
                "clubSearch": { templateUrl: currentSession.display_options.templates['club_search'] },
                "hotelSearch": { templateUrl: currentSession.display_options.templates['hotel_search'] },
                "hotelFooter": { templateUrl: currentSession.display_options.templates['hotel_footer'] }
            }
        });
}

angular.module("hotelApp").run(function (gettextCatalog, currentSession) {
    gettextCatalog.currentLanguage = currentSession.display_options.locale;
})
/*resets defaults for the $datepicker that comes with AngularStrap.*/
    .config(function ($datepickerProvider) {
        angular.extend($datepickerProvider.defaults, {
            autoclose: true,
            keyboard: false
        });
    });