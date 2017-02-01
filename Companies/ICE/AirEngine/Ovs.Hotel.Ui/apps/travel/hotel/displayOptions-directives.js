angular.module('displayOptionsDirectives', [])

/*displays text for display options obect
examples : 
           <display-options text="main.displayOptions.options.tcpa_optin_text" show="main.displayOptions.options.offer_tcpa_optin"></display-options>
           or
           <display-options text="main.displayOptions.options.tcpa_optin_text"></display-options><br />

           <div display-options show="main.displayOptions.options.show_bundled_price" text="main.displayOptions.options.show_bundled_price"></div><br />
           or 
           <display-options show="main.displayOptions.options.show_air_car_hotel_bookings" text="main.displayOptions.options.show_air_car_hotel_bookings"></display-options>


if the show attribute is present and false it will hide the element. 
if the show attribute is not present or true it will display the element. 
*/
.directive('displayOptions', function () {

    return {
        restrict: 'EA',
        template: "{{text}}",
        scope: {
            text: "=text",
            show: "=show",
        },
        link: function (scope, element, attrs) {
            
            if (attrs.text || scope.text) {
                return true;
            }            else {
                element.addClass('hide');
                return;
            }

            if (!scope.show || !attrs.show || (attrs.show && scope.show == 'true' || scope.show == true)) {
                return true;
            }
            else {
                element.addClass('hide');
                return;
            }
        }
    };
});