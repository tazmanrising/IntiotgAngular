'use strict';

// Declare app level module which depends on views, and components
angular.module('myApp', [
  'ngRoute',
  'myApp.server',
  'myApp.view2'//,
  //'myApp.version'
]).
config(['$locationProvider', '$routeProvider', function($locationProvider, $routeProvider) {
 // $locationProvider.hashPrefix('!');
    $locationProvider.hashPrefix(''); // get rid of ! was getting #! 

  $routeProvider.otherwise({redirectTo: '/server'});
}]);
