angular.module('commonFilters', [])
   /*Creates a geoboundaries search filter 
   Usage example: ng-repeat="y in [] | geoboundaries : geoboundaryArray"
   */
.filter('html', ['$sce', function ($sce) {
    return function (text) {
        return $sce.trustAsHtml(text);
    };
}])
// This filter must have ng-bind-html tag in the html to bind unicode characters coming in.
//This filter should be used as in the following example:
// <li ng-bind-html="123.45 | customCurrency: currencyFormat : 0 : ''"></li>
.filter('customCurrency', ['$filter', function (filter) {
    return function (amount, format, decimal, symbol) {
        if (!format || format == '') {
            amount = filter('currency')(amount, symbol, decimal);
            return amount;
        }
        //run through currency filter but strip off symbol
        amount = filter('currency')(amount, "", decimal);
        var formattedCurrency = format.replace('{amt}', amount);
        return formattedCurrency;
    };
}]);