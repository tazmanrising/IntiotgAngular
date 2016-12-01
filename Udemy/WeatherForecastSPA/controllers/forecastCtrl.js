weatherApp.controller('forecastController', ['$scope', '$resource',
    '$routeParams', 'cityService', 'weatherService',
    function ($scope, $resource, $routeParams, cityService, weatherService) {

        $scope.city = cityService.city;

        $scope.days = $routeParams.days || '2';

        $scope.weatherResult = weatherService.GetWeather($scope.city, $scope.days);
        

        //console.log($scope);

        $scope.convertToFahrenheit = function (degK) {
            return Math.round((1.8 * (degK - 273)) + 32);
        }

        $scope.convertToDate = function (dt) {
            return new Date(dt * 1000);
        }

    }]);