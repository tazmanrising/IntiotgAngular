"use strict";

angular.module('calibrus')
  .controller('DataEntryCtrl', function ($scope, $state, $ionicModal, $ionicPopup, $ionicHistory, mobiscrollService, enrollmentService, userService, formValidationService) {
    var vm = this;

    vm.autocompleteOptions = {
      componentRestrictions: {country: 'usa'}
    };


    vm.mobiscroll = {
      phone: mobiscrollService.phone,
      select: mobiscrollService.select
    };

    // ========== Authorized Party ==========
    vm.setAuthorizedParty = function (authorizedParty) {
      enrollmentService.setAuthorizedParty(authorizedParty);
      $state.go('app.data-entry.line-item.address', {lineItemIndex: 0});
    };

    vm.authorizedParty = angular.copy(enrollmentService.getAuthorizedParty());

    vm.processAuthorizedParty = function (formCtrl) {
      formValidationService.validateForm(formCtrl).then(function () {
        vm.setAuthorizedParty(vm.authorizedParty);
      });
    };

    // ========== Summary and Signature ==========
    vm.submitEnrollment = function () {
      var enrollment = enrollmentService.enrollmentToCalibrusReqeust();
      userService.submitEnrollment(enrollment).then(function (data) {
             
        $ionicPopup.alert({
          title: 'Thank You!',
          template: 'Enrollment was submitted successfully! The confirmation number is ' + data.mainId
        }).then(function () {
        
     
          $ionicHistory.nextViewOptions({
            disableBack: true
          });
          $ionicHistory.clearHistory();
          $state.go('app.home');
        });
      }, function (err) {
         
          $ionicPopup.alert({
            title: 'Error has occurred',
            template: 'Problem: ' +  err.data.errorList[0] 
          });

        if (err.message) {
          $ionicPopup.alert({
            title: 'An error occurred!',
            template: err & err.message || 'Something went wrong!'
          });
        }
       });



    };

    //================= NEW event ===================  
    // Todo :  cleanup  , get rid of modal one 
    // validate ...   
    // error handling
    // message listing
    //
    $scope.lookupLocator = function (recordLocator) {
        console.log(recordLocator);
    
        //console.log($scope.RecordLocator);

        //=========================================================================
        
        var loading={};
        if (!loading) loading = {};
        if (loading.lead) return;
        loading.lead = true;

        userService.getLeadByRecordLocator(recordLocator).then(function (lead) {
          console.log(lead);
          enrollmentService.setAuthorizedPartyFromLead(lead);
          vm.authorizedParty = angular.copy(enrollmentService.getAuthorizedParty());

          $scope.modal.hide();
          //console.log(vm);
          //console.log(vm.modal);
          //vm.modal.hide();
          //$rootScope.loading.$ionicLoading.hide();

        }, function () {
          //return $ionicPopup.alert({
          //  title: 'Not Found!',
          //  template: recordLocator + ' can not be found. Please try again.'
          //});
            console.log('Not found?');
            //title: 'Not Found!',
            //template: recordLocator + ' can not be found. Please try again.'

        }).finally(function () {
          loading.lead = false;
        });
        //============================================================================




    };



    $scope.getLead = function (LeadForm, recordLocator, loading) {
      console.log(LeadForm);
      console.log(recordLocator);
      console.log(loading);

      formValidationService.validateForm(LeadForm).then(function () {
        if (!loading) loading = {};
        if (loading.lead) return;
        loading.lead = true;

        userService.getLeadByRecordLocator(recordLocator).then(function (lead) {
          console.log(lead);
          enrollmentService.setAuthorizedPartyFromLead(lead);
          vm.authorizedParty = angular.copy(enrollmentService.getAuthorizedParty());

          $scope.modal.hide();
          //console.log(vm);
          //console.log(vm.modal);
          //vm.modal.hide();
          //$rootScope.loading.$ionicLoading.hide();

        }, function () {
          return $ionicPopup.alert({
            title: 'Not Found!',
            template: recordLocator + ' can not be found. Please try again.'
          });
        }).finally(function () {
          loading.lead = false;
        });
      });
    };

    $ionicModal.fromTemplateUrl('templates/data-entry/lead-locator-modal.html', {
      scope: $scope,
      animation: 'slide-in-up'
    }).then(function (modal) {
      $scope.modal = modal;
    });
    vm.openLocatorModal = function () {
      $scope.modal.show();
    };
    vm.closeModal = function () {
      $scope.modal.hide();
    };
    // Cleanup the modal when we're done with it!
    $scope.$on('$destroy', function () {
      $scope.modal.remove();
    });
  });
