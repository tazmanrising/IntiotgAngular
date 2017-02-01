(function () {
       
    var injectParams = ['airlineService'];

    var airlineCode = function (airlineService) {
        return {
            replace: true,
            restrict: "E",
            scope: {
                carrier: '@'
            },
            template: '<div ng-bind-html="content"></div>',
            link: function (scope, element, attrs) {
                var res = "";
                var promise = airlineService.getAllAirlines(attrs.carrier)
                    .then(function (result) {
                        res = result;
                        scope.content = result;
                                              
                    })
                    .catch(function () {
                        console.log('problem');
                    });
                               
            }
        };
    };

    airlineCode.$inject = injectParams;

    angular.module('airApp').directive('airlineCode', airlineCode)

}());