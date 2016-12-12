
// passing in camel case as the convention    employee-form

angularFormsApp.directive('employeeForm',
    function() {
        return{
            retrict: 'E', // only as element 
            templateUrl: 'app/EmployeeForm/efTemplate.html'
        }
    });