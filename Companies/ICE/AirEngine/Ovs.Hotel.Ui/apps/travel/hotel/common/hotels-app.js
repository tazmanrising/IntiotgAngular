var hotelsModule = angular.module('hotels', ['mgcrea.ngStrap', 'ngRoute', 'rzModule', 'hotelSearchFilters', 'hotelSearchDirectives', 'ng-backstretch'])

/*resets defaults for the $datepicker that comes with AngularStrap.*/
    .config(function ($datepickerProvider) {
        angular.extend($datepickerProvider.defaults, {
            dateFormat: 'M/d/yyyy',
            autoclose: true,
            keyboard: false
        });
    })
    /*Routes the app to correct pages. Example in HTML for referencing these routes : <a href="#/book">Book Test</a>
    A default controller should be listed for proper functionality. Similiar to .net MVC routing.
    */
    .config(['$routeProvider', '$locationProvider', function ($routeProvider, $locationProvider) {
        $routeProvider.
            when('/', {
                templateUrl: '../ng-views/search.html',
                controller: 'HotelsSearchController'
            }).
            when('/book', {
                templateUrl: '../ng-views/_Book.html',
                controller: 'HotelsBookController'

            }).
            when('/cancel', {
                templateUrl: '../ng-views/_Cancel.html',
                controller: 'HotelsCancelController'

            }).
            otherwise({
                redirectTo: '/'
            });
    }]);




