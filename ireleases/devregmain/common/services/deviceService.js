(function () {
    "use strict";

    angular
        .module("common.services")
        .factory("deviceService",
        ["$http",deviceService]);

    function deviceService($http) {
        function calculateMarginPercent(price, cost) {
            var margin = 0;
            if (price && cost) {
                margin = (100 * (price - cost)) / price;
            }
            margin = Math.round(margin);
            return margin;
        }
        function calculateMarginAmount(price, cost) {
            var margin = 0;
            if (price && cost) {
                margin = price - cost;
            }
            return margin;
        }
        function calculatePriceFromPercent(cost, percent) {
            var price = cost;
            if (cost && percent) {
                price = cost + (cost * percent / 100);
                price = (Math.round(price * 100)) / 100;
            }
            return price;
        }
        function calculatePriceFromAmount(cost, amount) {
            var price = cost;
            if (cost && amount) {
                price = cost + amount;
                price = (Math.round(price * 100)) / 100;
            }
            return price;
        }


        function chttpGetCost(cost, amount) {
               $http.get('../api/deviceEvents.json')
                .then(function (result) {
                    deviceEvents = result.data.DeviceEvents;
                    console.log(deviceEvents);
                },
                function (error) {
                    console.log(error);
                });
            var x = 4;
            return x;
        }

        return {
            calculateMarginPercent: calculateMarginPercent,
            calculateMarginAmount: calculateMarginAmount,
            calculatePriceFromMarkupPercent: calculatePriceFromPercent,
            calculatePriceFromMarkupAmount: calculatePriceFromAmount,
            chttpgetOutside: chttpGetCost
        }

    }


} ());