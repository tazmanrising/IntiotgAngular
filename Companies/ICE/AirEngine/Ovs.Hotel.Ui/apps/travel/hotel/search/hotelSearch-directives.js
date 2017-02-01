angular.module('hotelSearchDirectives', [])

/*ensures that only digits can be entered into an element. Add only-digits to the html to restrict to numbers only*/
.directive('onlyDigits', function () {
    return {
        require: 'ngModel',
        restrict: 'A',
        link: function (scope, element, attr, ctrl) {
            function inputValue(val) {
                if (val) {
                    var digits = val.replace(/[^0-9]/g, '');

                    if (digits !== val) {
                        ctrl.$setViewValue(digits);
                        ctrl.$render();
                    }
                    return parseInt(digits, 10);
                }
                return undefined;
            }
            ctrl.$parsers.push(inputValue);
        }
    };
})

/*Google Places Autocomplete API for elements. Add googleplace to the text box element that you want to have google autocompelte. */
.directive('googleplace', ['$timeout', function ($timeout) {
    return {
        require: 'ngModel',
        replace: true,
        link: function (scope, element, attrs, modelCtrl) {
            var options = {
                types: []
            };
            var place;
            scope.gPlace = new google.maps.places.Autocomplete(element[0], options);
            placesService = new google.maps.places.PlacesService(element[0]);
            var service = new google.maps.places.AutocompleteService();
            var geocoder = new google.maps.Geocoder;
            
            element.on('keyup', function () {
                //gets value entered by user as they type
                //scope.elementEntry = modelCtrl.$viewValue;
                /*Clears the lat and long if the text box the element is sitting on doesn't have a google place
                selected from the drop down.
                */
                scope.lat = '';
                scope.lng = '';
            });
            element.on('blur', function () {
                if (!modelCtrl.$viewValue) {
                    return;
                };
                $timeout(function () {
                    var displaySuggestions = function (predictions, status) {
                        if (status != google.maps.places.PlacesServiceStatus.OK || !predictions) {
                            return;
                        }
                        geocoder.geocode({ 'placeId': predictions[0].place_id }, function (results, status) {
                            if (status === google.maps.GeocoderStatus.OK) {
                                if (results[0]) {
                                    place = '';
                                    //builds the google place name to be the same format as what we have in our databases
                                    //in order to correct hotel geoboundary issues. The address only needs to be formatted this way
                                    //for predictions.
                                    for (var i = 0; i < results[0].address_components.length; i++) {
                                        //if the address component type is a state
                                        if (results[0].address_components[i].types[0] === 'administrative_area_level_1') {
                                            place += results[0].address_components[i].short_name + ', ';
                                        }
                                        else {
                                            place += results[0].address_components[i].long_name + ' ';
                                        }
                                    };
                                    scope.lat = results[0].geometry.location.lat();
                                    scope.lng = results[0].geometry.location.lng();
                                    var destination = {
                                        place: place,
                                        lat: scope.lat,
                                        lng: scope.lng,
                                    };
                                    scope.$apply(function () {
                                        modelCtrl.$setViewValue(destination);
                                    });
                                } else {
                                    console.error('No results found');
                                }
                            } else {
                                console.error('Geocoder failed due to: ' + status);
                            }
                        });
                    };
                    service.getQueryPredictions({ input: modelCtrl.$viewValue }, displaySuggestions);  
                }, 100);

            });
                        
            google.maps.event.addListener(scope.gPlace, 'place_changed', function () {
                scope.place = scope.gPlace.getPlace();
                //console.log('place geometery : ' + JSON.stringify(scope.place.geometry, null, '\t'));
                if (scope.place.geometry) {
                    scope.lat = scope.place.geometry.location.lat();
                    scope.lng = scope.place.geometry.location.lng();
                }
                var destination = {
                    place: element.val(),
                    lat: scope.lat,
                    lng: scope.lng,
                };
                scope.$apply(function () {
                    //console.log('directive lat :' + scope.lat);
                    //console.log('element.val : ' + element.val());
                    //console.log(element);
                    //console.log('destination : ' + JSON.stringify(destination));
                    modelCtrl.$setViewValue(destination);

                });
            });
        }
    }
}])
/*used to hide the half star list item in the hotel search results if there is no half star element. Add hotel-stars to any element and pass in star rating through the stars attribute*/
.directive('hotelStars', function () {
    return {
        restrict: 'EA',
        scope: {
             stars: "=",
        },
        link: function (scope, element, attrs) {
            var starRating = scope.stars;
            var getHalfStar = starRating % 1; 
            if (getHalfStar == 0) {
                element.addClass('hide');
            }
        }
    };
})
.directive('slider', ['$timeout', function ($timeout) {
    return {
        restrict: 'A',
        link: function (scope, element, attrs) {
            element.one('mouseup', function () {
                $timeout(function () {
                    scope.$broadcast('reCalcViewDimensions');
                }, 100);
            });
        }
    };
}]);