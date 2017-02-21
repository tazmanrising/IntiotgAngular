"use strict";

angular.module('calibrus')
  .constant('calibrusSparkUrl', '')
  .provider('calibrusSparkApiInterceptor', function () {
    this.$get = ['$q', function ($q) {
      return {
        response: function (res) {
          if (res.config.calibrusApiResponse) {
            var unknownError = ['No data was returned on response'];
            if (res.data.hasErrors) return $q.reject(res.data.errorList || unknownError);

            var data = res.data && res.data.data;
            if (!data) return $q.reject(unknownError);

            return data;
          }
          return res;
        }
      };
    }];
  })
  .config(function ($httpProvider) {
    $httpProvider.interceptors.push('calibrusSparkApiInterceptor');
  })

  .service('calibrusSparkLogonService', function ($q, $http, calibrusSparkUrl) {

    this.logon = function (credentials) {
      return $http.post(`${calibrusSparkUrl}/api/dataentry/logon`, {
        sparkId: credentials.sparkId,
        password: credentials.password
      }, {calibrusApiResponse: true});
    };

  })

  .service('calibrusSparkRequestService', function ($q, $http, calibrusSparkUrl) {

    this.submitRequest = function (data) {
        return $http.post(`${calibrusSparkUrl}/api/request`, data)
              .then(function(res){
                 return res;
              });
    };

    this.getLead = function (id, vendorNumber) {
      return $http.get(`${calibrusSparkUrl}/api/lead/${vendorNumber}/${id}`, {calibrusApiResponse: true});
    };

    // NOTE : getMain clone..?
    this.getMain = function (id) {
      return $http.get(`${calibrusSparkUrl}/api/main/${id}`, {calibrusApiResponse: true});
    };

    this.getProgramsForVendorByUtiltiyType = function (utilityId, vendorId, utilityType) {
      return $http.get(`${calibrusSparkUrl}/api/programs/${utilityId}/${vendorId}/${utilityType}`, {calibrusApiResponse: true});
    };

    this.getUtilityTypes = function () {
      return $q.when([
        {
          type: 'electric',
          name: 'Electric',
          utilityType: 'electric'
        },
        {
          type: 'gas',
          name: 'Gas',
          utilityType: 'gas'
        },
        {
          type: 'dualFuel',
          name: 'Dual Fuel',
          utilityType: 'gas'
        }
      ]);
    };

    this.getUtilitiesByStateCode = function (stateCode) {
      if (!stateCode || (stateCode && stateCode.length !== 2)) return $q.reject('Invalid state');
      return $http.get(`${calibrusSparkUrl}/api/utilities/${stateCode}`, {calibrusApiResponse: true});
    };

    this.getUtilityPrograms = function (vendorId, officeId, stateCode, zip) {
      return $http.get(`${calibrusSparkUrl}/api/getutilityprograms/${vendorId}/${officeId}/${stateCode}/${zip}`).then(function (res) {
        return res.data;
      });
    };

    this.getRelationships = function () {
      return $http.get(`${calibrusSparkUrl}/api/relationships`, {calibrusApiResponse: true});
    };
  });
