"use strict";

angular.module('calibrus')
  .controller('DataEntryLineItemCurrentUtilitiesCtrl', function ($state, enrollmentService, formValidationService) {
    var vm = this;

    vm.processCurrentUtilities = function (formCtrl) {
      enrollmentService.saveEnrollment();
      formValidationService.validateForm(formCtrl).then(function () {
        $state.go('app.data-entry.summary-and-signature');
      });
    };
  });
