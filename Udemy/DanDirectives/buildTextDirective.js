(function() {
    var app = angular.module('directivesModule', []);

    app.directive('buildText', function () {

            //DDO   Directive Definition Object

            return {
                template: 'Build Text'
            };
            
            // return{
            //     restrict: 'EA',
            //     scope: {},
            //     template: '<div>{{ myVal }}',
            //     controller: controller,
            //     link: function(scope, element, attrs){

            //     }
            // };

    });


    app.controller('myController', ['$scope', function($scope){
        $scope.customer = {
            name: 'David',
            street: '1234 Anywhere st.'
        };
    }]);

    // Scope is inherited by directive below

    app.directive('sharedScope', function () {
        return {
            template: 'Name: {{ customer.name }} <br> Street: {{ customer.street}}'
        };
    });


}());