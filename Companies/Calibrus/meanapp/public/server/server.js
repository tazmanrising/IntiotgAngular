'use strict';

angular.module('myApp.server', ['ngRoute'])

.config(['$routeProvider','$locationProvider', function($routeProvider, $locationProvider) {
  $routeProvider.when('/server', {
    templateUrl: 'server/server.html',
    controller: 'ServerCtrl',
    controllerAs: 'vm'
  });
      $locationProvider.hashPrefix(''); // get rid of ! was getting #! 
}])

.controller('ServerCtrl', ['$http',function($http) {
  var vm = this;
  vm.currentDB ;


  // this call is on load
//   $http.get('/scripts')
//       .then(function(response){
//       //  console.log(response);
//         vm.databases = response.data ;
//       })




    $http.get('/scripts')
        .then(function(response){
        console.log('response.data', response.data);

        vm.databases = response.data;
    })

  vm.getTables = function(){
      //  console.log('where are the tables for %s', vm.currentDB.name)
    $http.get('/scripts/' + vm.currentDB.name)
        .then(function(response){
         // console.log(response.data[0]);
          vm.tables = response.data[0] ;
        })
  }

  vm.getScripts = function(){
    $http.get('/scripts/' + vm.currentDB.name + '/' + vm.currentTable.mytable)
        .then(function(response){
        //   console.log(response.data[0]);
          vm.scripts  = response.data[0];
        })
  }


 // save the modal 
  vm.saveScript = function(script){
      //script.db = vm.currentDB ;
      //script.table = vm.currentTable.mytable


      console.log('script',script.Name);

    //   $http.post('/scripts/save', script )
    //       .then(function(response){
    //          // console.log(response);
    //             if(response.status == 200){
    //                 alert('record saved')
    //             }else
    //             {
    //                 alert('record not saved')
    //             }
    //           $('#myModal').modal({show:false}) ;
    //       })
  }

 /////////////////////////////////////


  vm.edit = function(script){
      // do modal
      console.log('script',script);
      
      vm.script = script;
     $('#myModal').modal({show:true}) ;
  }

}]);