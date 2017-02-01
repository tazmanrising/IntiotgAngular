angular.module('hotelSearchFilters', [])
    /*Creates a geoboundaries search filter 
    Usage example: ng-repeat="y in [] | geoboundaries : geoboundaryArray"
    */
    .filter('geoboundaries', function () {
        return function (hotels, boundaries) {
            if (!hotels) {
                return;
            };
            if (!boundaries) {
                return;
            };
            //Ensures that there is at least one check box checked on incoming filters
            var boundariesPresent = false;
            for (var prop in boundaries) {
                if (boundaries[prop].isChecked === true) {
                    var boundariesPresent = true;
                    break;
                }
            };
            //if there aren't any boundaries checked, select the parent boundary
            if (boundariesPresent === false) {
                for (var property in boundaries) {
                    if (boundaries[property].is_parent == true) {
                        boundaries[property].isChecked = true;
                    }
                }
            }
            return hotels.filter(function (hotel) {
                for (var i = 0; i < hotel.hotel_snapshot.geo_boundaries.length; i++) {
                   var position = boundaries.map(function (boundaries) { return boundaries.id; }).indexOf(hotel.hotel_snapshot.geo_boundaries[i]);
                    /*return hotels if they are located within the parent boundary list and the box is checked in the DOM*/
                   if (position != -1 && boundaries[position].isChecked == true) {
                       return true;
                    }
                }
                return false;
            });
        }
    })
        /*Creates a geoboundaries search filter 
    Usage example: ng-repeat="y in [] | amenities : amenitiesList"
    */
    .filter('amenities', ['usSpinnerService', function () {
        return function (hotels, amenities, filterEnabled) {
            if (!hotels || !amenities) {
                return;
            }    
            return hotels.filter(function (hotel) {
                if (filterEnabled == false) {
                    return true;
                }

                //solution for having multiple amenities to refine the filter list. This makes the filter act like an "and" fitler, meaning 
                //each check box that is checked in the UI will refine the filter more and more. 
                var newAmenitiesList = [],
                    allMatchingList = [];
                for (var j = 0; j < amenities.length; j++){
                    if(amenities[j].isChecked == true){
                        newAmenitiesList.push(amenities[j].id);
                    };
                };

                for (var k = 0; k < newAmenitiesList.length; k++) {
                    
                    hasPosition = hotel.hotel_snapshot.filter_amenities.indexOf(newAmenitiesList[k]);
                    if (hasPosition != -1) {
                        allMatchingList.push(1);
                    }
                    else {
                        allMatchingList.push(0);
                    }
                }
                
                if (allMatchingList.indexOf(0) != -1) {
                    return false;
                }
                else {
                    return true;
                };

              
                //solution for having the filter act as an "or" filter....meaning that each checkbox will return additional results. 
                //Currently the filter is set as an "and" filter set above.

                //for (var i = 0; i < hotel.hotel_snapshot.filter_amenities.length; i++) {
                //    var position = amenities.map(function (amenities) { return amenities.id; }).indexOf(hotel.hotel_snapshot.filter_amenities[i]);

                //    console.log('hotelPosition:' + hotelPosition);
                //    /*return hotels if they are located within the parent amenities list and the box is checked in the DOM*/
                //    if (position != -1 && amenities[position].isChecked == true) {
                //        return true;
                //    }
                //}
                //return false;
            });
        }
    }])
    /*Creates a text search filter 
    Usage example: ng-repeat="y in [] | textSearch : textArray"
    */
    .filter('textSearch', function () {
        return function (hotels, textSearch) {
            if(!hotels){return true};
            //console.log('all hotels :' + JSON.stringify(hotels, null, '\t'));
            return hotels.filter(function (hotel) {
                //console.log('hotel text search : ' + JSON.stringify(textSearch, null, '\t'))
                if (!textSearch || textSearch == '') {
                    return true;
                }
                if (!hotel.hotel_snapshot.chain_name) {
                    hotel.hotel_snapshot.chain_name = 'Independent';
                };
                var hotelSnapShotChainName = angular.lowercase(hotel.hotel_snapshot.chain_name).toString();                
                var brandName = hotelSnapShotChainName.indexOf(angular.lowercase(textSearch));
            if (brandName != -1) {
                return true;
            };
            var hotelSnapShotName = angular.lowercase(hotel.hotel_snapshot.name).toString();
            var hotelName = hotelSnapShotName.indexOf(angular.lowercase(textSearch));
        
                if (hotelName != -1) {
                    return true;
                }
                else {
                    return false;
                };
            });
        }
    })
/* Creates a range 
 Usage example: ng-repeat="y in [] | range:200:500"
*/
    .filter('rangeFilter', ['usSpinnerService', function (usSpinnerService) {
        return function (items, attr, min, max) {
            if (!items) {
                return;
            };
     /*       usSpinnerService.spin("spinner-1"); */
            var range = [],
                price,
                item,
                i;
            /*recursive function to break apart the object path*/
            function recompose(obj, string) {
                var parts = string.split('.');
                var newObj = obj[parts[0]];
                if (parts[1]) {
                    parts.splice(0, 1);
                    var newString = parts.join('.');
                    return recompose(newObj, newString);
                }
                return newObj;
            }
            for (i = 0; i < items.length; i++) {
                item = items[i];
                price = recompose(items[i], attr);
                if (price <= max && price >= min) {
                    range.push(item);
                }
            }
            //console.log('range: ' + JSON.stringify(range, null, '\t'));
            return range;
        }
    }])


.filter('html', ['$sce', function ($sce) {
    return function (text) {
        return $sce.trustAsHtml(text);
    };
}])
// This filter must have ng-bind-html tag in the html to bind unicode characters coming in.
//This filter should be used as in the following example:
// <li ng-bind-html="123.45 | customCurrency: currencyFormat"></li>
.filter('customCurrency', ['$filter', function (filter) {
    return function (amount, format, decimal, symbol) {
        if (!format || format == '') {
            amount = filter('currency')(amount, symbol, decimal);
            return amount;
        }
        //run through currency filter but strip off symbol
        amount = filter('currency')(amount, "", decimal);
        var formattedCurrency = format.replace('{amt}', amount);
        return formattedCurrency;
    };
}]);
