// Services 

weatherApp.service('cityService', function () {
    this.city = "New York, NY";
});

weatherApp.service('weatherService', ['$resource', function ($resource) {

    /*
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
       */

    this.GetWeather = function (city, days) {

        var mapUrl = "http://api.openweathermap.org/data/2.5/forecast/daily?APPID=159aa00a6aa40ddc822b26bf1ec8a116";
        var weatherAPI = $resource(mapUrl, {
            callback: "JSON_CALLBACK"
        }, { get: { method: "JSONP" } });

        //q = city  
        // cnt = count
        return weatherAPI.get({
            q: city, cnt:
            days //2
        });
    };

}]);
