(function () {
    "use strict";
     //angular.module('app', ['angularUtils.directives.dirPagination']);
    
    var app = angular.module("deviceManagement",
        ['angularUtils.directives.dirPagination',
         'common.services',
         'deviceResourceMock'
        ]);


}());