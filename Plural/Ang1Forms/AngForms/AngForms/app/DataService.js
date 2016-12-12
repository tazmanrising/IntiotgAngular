
// factory method creates a service  
// service will return an employee 

angularFormsApp.factory('DataService',
    function() {
        return {
            employee: {
                fullName: "Milton Waddams",
                notes: "The ideal employee",
                department: "Administration",
                perkCar: true,
                perStock: false,
                perkSixWeeks: true,
                payrollType: "none"
            }
        }
    });