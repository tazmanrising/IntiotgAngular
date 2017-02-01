/*this service is slowly being replaced by the search-factory.js. It needs to be slowly phased out and finally removed. */

(function () {
    "use strict";

    angular
        .module("hotelApp")
        .factory("SessionService", SessionService);

    SessionService.$inject = [];

    function SessionService() {
        var userSession = {};
        userSession = {
            /*
            The user object is dynamically created and updated from the search controller.
            The object should contain : 

            currentUser: {},
            displayOptions: {},

            */
            user: {},
            getUser: function () {
                return this.user;
            },
            updateUser: function (updatedUser) {
                this.user = updatedUser;
                //console.log('session service updated : ' + JSON.stringify(userSession.user, null, '\t'));
                return this.user;
            }
        }
        return userSession;
    }
})();