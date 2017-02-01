(function () {
    'use strict';

    angular
        .module('hotelApp')
        .factory('selectedRoomFactory', selectedRoomFactory);

    selectedRoomFactory.$inject = [];

    function selectedRoomFactory() {
        var roomData = {};
        roomData =
            {
                roomDetails: {
                    /*will dynamically populate on update call which comes from the hotelDetail-controller*/
                },
                update: function (selectedRoomData) {
                    this.roomDetails = selectedRoomData;
                    //console.log('selected room factory :' + JSON.stringify(this.roomDetails, null, "\t"));
                }
            };

        return roomData;
        };

})();

