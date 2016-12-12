
//angularFormsApp   is our application variable 
angularFormsApp.controller('efController',
    function efController($scope, DataService) {
        $scope.employee = DataService.employee;

        $scope.departments = [
            "Engineering",
            "Marketing",
            "Finance",
            "Administration"
        ];

        $scope.submitForm = function() {
            console.log('submit');
        }

        $scope.cancelForm = function () {
            console.log('cancel');
        }

    });

