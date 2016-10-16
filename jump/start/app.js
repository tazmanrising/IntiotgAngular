
// # option 1
//angular.module('customersApp', []);

// # option 2 
//var salesApp = angular.module('salesApp', []);


// # 3

(function () {
    // not in global scope 
    var salesApp = angular.module('salesApp', []);

}());