// angular-spin
// https://github.com/urish/angular-spinner


app.directive('clickAndDisable', ['$timeout', 'usSpinnerService', function ($timeout, usSpinnerService) {
    return {
        scope: {
            clickAndDisable: '&'
        },
        link: function (scope, iElement, iAttrs) {
            iElement.bind('click', function () {
                window.scrollTo(0, 0);
                usSpinnerService.spin("spinner-1");
                iElement.prop('disabled', true);

                scope.clickAndDisable().finally(function () {
                    usSpinnerService.stop("spinner-1");
                    iElement.prop('disabled', false);
                })
            });
        }
    };
}]);






// OR


// This directive will disable the button until the save/promises is not fulfilled. single-click must return promises otherwise it will not disable the button.
// In case there is no promises but still want to disable the button, then it is recommended to write own logic of disabling the button

//app.directive('singleClick', function ($parse) {
//    return {
//        compile: function ($element, attr) {
//            var handler = $parse(attr.singleClick);
//            return function (scope, element, attr) {
//                element.on('click', function (event) {
//                    scope.$apply(function () {
//                        var promise = handler(scope, { $event: event }); /// calls and execute the function specified in attrs.
//                        if (promise && angular.isFunction(promise.finally)) { /// will execute only if it returns any kind of promises.
//                            element.attr('disabled', true);
//                            promise.finally(function () {
//                                element.attr('disabled', false);
//                            });
//                        }
//                    });
//                });
//            };
//        }
//    };
//});