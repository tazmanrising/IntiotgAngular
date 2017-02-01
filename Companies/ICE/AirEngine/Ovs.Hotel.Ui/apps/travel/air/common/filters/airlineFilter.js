(function () {

    var injectParams = ['airlineService'];

    var airlineCodeFilter = function (airlineService) {

        return function (code) {
        
            var res = "";
            var promise = airlineService.getAllAirlines(code)
                .then(function (result) {
                    res = result;
                    //console.log(code); // works
                    //console.log(result); works
                })
                .catch(function () {
                    console.log('problem');
                });

            promise.then(function () {  
                console.log('res',  res);  // works

                return res;  // not working
            });
           
            //return res; // not working
        }

    };


    airlineCodeFilter.$inject = injectParams;

    angular.module('airApp').filter('airlineCodeFilter', airlineCodeFilter);

}());