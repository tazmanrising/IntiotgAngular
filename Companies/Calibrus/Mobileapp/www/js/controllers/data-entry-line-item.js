"use strict";

angular.module('calibrus')
  .controller('DataEntryLineItemCtrl', function ($state, $ionicPopup, addressService, googleService, enrollmentService, calibrusSparkRequestService, formValidationService) {
    var vm = this;

    vm.lineItem = enrollmentService.getLineItem($state.params.lineItemIndex);

    calibrusSparkRequestService.getRelationships().then(function (relationships) {
      vm.relationships = relationships;
    });

    // ========== Service Location IE the initial address of service ==========
    vm.setServiceLocation = function (location, next) {
      vm.lineItem.serviceLocation = googleService.googleAddressComponentsToAddress(location);
      enrollmentService.saveEnrollment();
      if (next) $state.go('^.utilities-and-programs');
    };

    vm.removeServiceLocation = function () {
      vm.lineItem.serviceLocation = null;
      enrollmentService.saveEnrollment();
      $state.go('^.address-gps', {location: 'replace'});
    };

    // ========== Address Manual ==========
    vm.manualLocation = {};

    vm.processAddress = function (formCtrl) {
      if (vm.lineItem.serviceLocation) return $state.go('^.^.utilities-and-programs');
      formValidationService.validateForm(formCtrl).then(function () {
        vm.setServiceLocation(vm.manualLocation);
      });
    };

    // TODO : Add a method to use google to suggest address.

    vm.getCityStateFromZip = function (zip, isValid) {
      if (!isValid) return;

      vm.zipInfo = null;

      addressService.zipcodeInfo(zip).then(function (zipInfo) {
        vm.zipInfo = zipInfo;

        vm.manualLocation.city = vm.zipInfo.city;
        vm.manualLocation.state = vm.zipInfo.state;
      });
    };

    // ========== Billing Location ==========
    vm.setBillingLocation = function (location, utilityType) {
      vm.lineItem.services[utilityType].currentService.billingLocation = googleService.googleAddressComponentsToAddress(location);
      enrollmentService.saveEnrollment();
    };

    // ========== Utility and Program ==========
    vm.setUtilityAndProgram = function (serviceType, utilityAndProgram, serviceProvider) {

      vm.lineItem.services[serviceType].utilityAndProgram = utilityAndProgram;
      vm.lineItem.services[serviceType].serviceProvider = serviceProvider;
      vm.lineItem.services[serviceType].currentService = angular.copy(enrollmentService.defaults.currentService);
      enrollmentService.saveEnrollment();
    };

    vm.clearUtilityAndProgram = function (serviceType) {
      $ionicPopup.confirm({
        title: 'Confirm',
        template: 'Are you sure you want to remove this service?'
      }).then(function (res) {
        if (res) {
          vm.lineItem.services[serviceType] = null;
          enrollmentService.saveEnrollment();
        }
      });
    };
  });
