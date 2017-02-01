(function () {

    var displayDisclaimer = function () {
        return {
            restrict: 'AE',
            replace: 'true',
            templateUrl: '/apps/travel/air/common/templates/airDisclaimer.html'            
        };
        
    };
    
    angular.module('airApp').directive('displayDisclaimer', displayDisclaimer);

}());