// MODULE

var weatherApp = angular.module('weatherApp', ['ngRoute', 'ngResource']);


// Routes

weatherApp.config(function ($routeProvider) {
    $routeProvider
        .when('/', {
            templateUrl: 'pages/home.htm',
            controller: 'homeController'
        })
        .when('/forecast', {
            templateUrl: 'pages/forecast.htm',
            controller: 'forecastController'
        })
         .when('/forecast/:days', {
            templateUrl: 'pages/forecast.htm',
            controller: 'forecastController'
        })

});

// Services 

weatherApp.service('cityService', function () {
    this.city = "New York, NY";
});



//Controllers

weatherApp.controller('homeController', ['$scope', 'cityService',
    function ($scope, cityService) {
        $scope.city = cityService.city;

        $scope.$watch('city', function () {
            cityService.city = $scope.city;
        });
    }]);

weatherApp.controller('forecastController', ['$scope', '$resource', 
'$routeParams', 'cityService',
    function ($scope, $resource, $routeParams, cityService) {

        $scope.city = cityService.city;

        $scope.days = $routeParams.days || '2';

        var mapUrl = "http://api.openweathermap.org/data/2.5/forecast/daily?APPID=159aa00a6aa40ddc822b26bf1ec8a116";
        $scope.weatherAPI = $resource(mapUrl, {
            callback: "JSON_CALLBACK"
        }, { get: { method: "JSONP" } });

        //q = city  
        // cnt = count
        $scope.weatherResult = $scope.weatherAPI.get({
            q: $scope.city, cnt:
                $scope.days //2
        });

        //console.log($scope);

        $scope.convertToFahrenheit = function(degK) {
            return Math.round((1.8 * (degK - 273)) + 32);
        }

        $scope.convertToDate = function(dt) {
            return new Date(dt * 1000);
        }

    }]);