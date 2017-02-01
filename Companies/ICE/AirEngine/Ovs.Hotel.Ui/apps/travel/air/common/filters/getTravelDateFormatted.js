(function () {
    
    //var getTravelDateFormattedOld = function () {
    //    // Example  23-Jan-17 (Mon) 
    //    return function (str) {
    //        var daysNames = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
    //            monthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sept', 'Oct', 'Nov', 'Dec'],
    //            d = new Date(str),
    //            day = d.getDate(),
    //            month = monthNames[d.getMonth()],
    //            year = d.getFullYear().toString().substr(2, 2),
    //            dayName = daysNames[d.getDay()];

    //        return day + '-' + month + '-' + year + ' (' + dayName + ')';

    //    };
    //};

    var getTravelDateFormatted = function () {
        // Example  Mon Jan 23 
        return function (str) {
            var daysNames = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
                monthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sept', 'Oct', 'Nov', 'Dec'],
                d = new Date(str),
                day = d.getDate(),
                month = monthNames[d.getMonth()],
                year = d.getFullYear().toString().substr(2, 2),
                dayName = daysNames[d.getDay()];

            //return day + '-' + month + '-' + year + ' (' + dayName + ')';
            return dayName + ' ' + month + ' ' + day;
        };
    };
        
    var getDateFormattedSingle = function () {
        // Example Tue Feb 14 4:30 PM     from   2017-02-14T11:30:00

        return function (str) {
            var daysNames = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
                 monthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sept', 'Oct', 'Nov', 'Dec'],
                 d = new Date(str),
                 day = d.getDate(),
                 month = monthNames[d.getMonth()],
                 year = d.getFullYear().toString().substr(2, 2),
                 hours = d.getHours(),
                 minutes = d.getMinutes(),
                 dayName = daysNames[d.getDay()];

            return hours > 12 ? (dayName + ' ' + month + ' ' + day + ' ' + (hours - 12) + ":" + minutes + " AM") : (dayName + ' ' + month + ' ' + day + ' ' + hours + ":" + minutes + " PM");

            //Todo   perhaps start using moment.js      
            //2017-02-14T11:30:00
            //console.log(moment(blah).format('ddd MMM DD HH:mm a'));

        };


    };


    var getFullDateTimeMoment = function () {
        //2017-02-14T11:30:00
        //console.log(moment(blah).format('ddd MMM DD HH:mm a'));

        return function (str) {
            var finalDateTime = moment(str).format('ddd MMM DD HH:mm a');
            return finalDateTime;
        };

    };




    angular.module('airApp')
        .filter('getTravelDateFormatted', getTravelDateFormatted)
        .filter('getDateFormattedSingle', getDateFormattedSingle)
        .filter('getFullDateTimeMoment', getFullDateTimeMoment);


}());