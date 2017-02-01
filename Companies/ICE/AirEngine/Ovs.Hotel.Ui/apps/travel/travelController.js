(function () {
    'use strict';

    angular
        .module('travelApp')
        .controller('travelController', travelController);

    travelController.$inject = ['$location', 'displayOptions','currentUser'];

    function travelController($location,displayOptions,currentUser) {
        /* jshint validthis:true */
        var vm = this;
        vm.title = 'travelController';
        vm.currentUser = currentUser;
        vm.displayOptions = displayOptions;

        activate();

        function activate() { }
    }
})();
