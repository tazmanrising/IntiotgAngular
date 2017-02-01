    'use strict';
    var TravelApp = angular.module('travelApp', [
        // Angular modules 
        'ui.router',
        'google.places',
        'gettext'

        // Custom modules 

        // 3rd Party Modules
        
    ]).config(configure);

    configure.$inject = ['$stateProvider', '$urlRouterProvider', 'displayOptions'];

    function configure($stateProvider, $urlRouterProvider,displayOptions) {
        $urlRouterProvider.otherwise("/");
        $stateProvider.state('index', {
            url: "",
            views: {
                "travelNav": { templateUrl: displayOptions.display_templates['travel_nav'] },
                "travelBody": { templateUrl: displayOptions.display_templates['travel_body'] },
                "travelFooter": { templateUrl: displayOptions.display_templates['travel_footer'] }
            }
        })
    }

    angular.module("travelApp").run(function (gettextCatalog, displayOptions) {
        gettextCatalog.currentLanguage = displayOptions.locale; 
    });

