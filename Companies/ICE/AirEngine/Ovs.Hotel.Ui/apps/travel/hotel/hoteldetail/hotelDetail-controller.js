(function() {
    "use strict";

    angular
        .module("hotelApp")
        .controller("HotelsDetailController", HotelsDetailController);

    HotelsDetailController.$inject = [
        "$anchorScroll", "$scope", "$sce", "$location", "$state", "hotelDetailService", "SearchService", "SessionService", "currentSession", "searchFactory", "detailFactory", "usSpinnerService", "dialogService", "$timeout"
    ];


    function HotelsDetailController($anchorScroll, $scope, $sce, $location, $state, hotelDetailService, SessionService, currentSession, SearchService, searchFactory, detailFactory, usSpinnerService, dialogService, $timeout) {
        var details = this;

        /*test variables for unit testing basic connectivity*/
        details.testConnection = true;
        details.test = hotelDetailService.test;
        details.detailsReturned = detailFactory.details || {};
        //console.log("detail factory : " + JSON.stringify(details.detailsReturned, null, "\t"));
        
        /*Boolean to flags if results should be displayed in the UI*/
        details.show = {
            detailsReturned: false,
            toggle: false,
            detailsToggle: true,
            error: {
                detailSearch: false,
                message: ""
            }
        };
        details.currentSession = currentSession;
        //console.log('seach factory : ' + JSON.stringify(searchFactory, null, '\t'));
        details.currencyFormat = details.currentSession.user.currentSession.display_options.options.currency_format || '';
        details.daily = details.currentSession.user.currentSession.display_options.options.show_daily_price;

        /*shows or hides the tabs for the hotel detail search*/
        details.hide = function() {
            details.show.detailsToggle = details.show.detailsToggle ? false : true;
        };
        details.startSpin = function() {
            usSpinnerService.spin("spinner-1");
        };

        details.gotoTop = function () {
            $location.hash('top');
            $anchorScroll();
        };

        details.tabs = [
            {
                "title": "Rooms",
                "content": "../ng-views/_Rooms.html",
                "disabled": false
            },
            {
                "title": "Details",
                "content": "../ng-views/_Details.html",
                "disabled": false
            },
            {
                "title": "Amenities",
                "content": "../ng-views/_Amenities.html",
                "disabled": false
            },
            {
                "title": "Photos",
                "content": "../ng-views/_Photos.html",
                "disabled": false
            },
            {
                "title": "Map",
                "content": "../ng-views/_Map.html",
                "disabled": false
            },
            {
                "title": "Policies & Fees",
                "content": "../ng-views/_Policies.html",
                "disabled": false
            }
        ];

        details.tabs.activeTab = "Rooms";

        function searchCompleted() {
            $state.go("hoteldetail");
            stopSpin();

        };

        function startSpin() {
            usSpinnerService.spin("spinner-1");
        };

        function stopSpin() {
            usSpinnerService.stop("spinner-1");
        };
        details.anchorScroll = function(id) {
            $location.hash(id);
            $anchorScroll();
        };

        /*function that is called on click from the search button in the UI. Calls to hotelSearch-service. This gets hotel details and returns them to the UI.*/
        details.callDetails = function(hotel, id) {
            details.anchorScroll(id);
            details.show.toggle = details.show.toggle ? false : true;
            startSpin();
            details.detailsReturned = hotelDetailService.getDetails(hotel.id)
                .success(function(response) {
                    details.detailsReturned = response || {};

                    //console.log("details returned" + JSON.stringify(details.detailsReturned, null, "\t"));

                    details.detailsReturned.hotelPhoto = hotel.img_URL;
                    //detailFactory.update(details.detailsReturned);
                    //console.log('detail factory updated in detail controller' + JSON.stringify(detailFactory.details));
                    searchCompleted();
                })
                .error(function (error) {
                    usSpinnerService.stop("spinner-1");
                    if (details.detailsReturned.$$state.value.status === -1) {
                        dialogService.showDialog("It's taking too long!","We apologize for the delay.  Your request has been recorded so we can research it.  Please try again in a few seconds.");
                    } else {
                        dialogService.showDialog("We've had a problem...","We apologize but there has been an error during your query.  Your request has been recorded so we can research it.");                       
                    }
                    details.show.error.detailSearch = true;
                });

        };

        /************ Google Maps *****************/
        details.mapInit = function () {

            $timeout(function () {
            //variable used to populate points on the map and thier description. 
                if (details.detailsReturned.HotelContent) {
                    var cities = [
                    {
                        city: details.detailsReturned.HotelContent.city,
                        desc: details.detailsReturned.HotelContent.name,
                        lat: details.detailsReturned.HotelContent.latitude,
                        long: details.detailsReturned.HotelContent.longitude
                    }
                    ];
                    //various map options. Map Type can be set to ROADMAP, TERRAIN , HYBRID, or SATELLITE
                    var mapOptions = {
                        zoom: 14,
                        center: new google.maps.LatLng(details.detailsReturned.HotelContent.latitude, details.detailsReturned.HotelContent.longitude),
                        mapTypeId: google.maps.MapTypeId.ROADMAP,
                    };

                    details.map = new google.maps.Map(document.querySelector("#map"), mapOptions);

                    details.markers = [];

                    var infoWindow = new google.maps.InfoWindow();
                    var createMarker = function (info) {
                        if (info != null) {
                            var marker = new google.maps.Marker({
                                map: details.map,
                                position: new google.maps.LatLng(info.lat, info.long),
                                title: info.city
                            });

                            marker.content = '<div class="infoWindowContent">' + info.desc + "</div>";

                            google.maps.event.addListener(marker, "click", function () {
                                infoWindow.setContent("<h2>" + marker.title + "</h2>" + marker.content);
                                infoWindow.open(details.map, marker);
                            });

                            details.markers.push(marker);
                        };

                    };

                    for (var i = 0; i < cities.length; i++) {
                        createMarker(cities[i]);
                    };

                    createMarker();

                    details.openInfoWindow = function (e, selectedMarker) {
                        e.preventDefault();
                        google.maps.event.trigger(selectedMarker, "click");
                    };
                }
            }, 50);
        };
    };
})
();

