(function () {
    'use strict';

    angular
        .module('hotelApp')
        .factory('hotelBookService', hotelBookService);

    hotelBookService.$inject = ['$http', 'SessionService', 'currentSession', 'detailFactory', 'selectedRoomFactory', 'searchFactory', 'confirmationFactory', 'bookPurchaseFactory',"$log", "LogglyLogger"];

    function getCorrectedDate(userDate) {
        // we just want the year, month and date in yyyy-mm-dd format
        var yy = userDate.getFullYear();
        var mm = userDate.getMonth() + 1;
        var dd = userDate.getDate();
        return yy.toString() + "-" + mm.toString() + "-" + dd.toString();
    }

    function hotelBookService($http, SessionService, currentSession, detailFactory, selectedRoomFactory, searchFactory, confirmationFactory, bookPurchaseFactory, $log, LogglyLogger) {

        /*Object to return JSON data to controllers*/
        var returnedBook = {};

        /*string to unit test basic connection from service to controller.*/
        returnedBook.test = true;

        /*Object to hold returned booking data from the post call*/
        returnedBook.responseData = {};

        returnedBook.makePurchase = function (bookData) {
            //console.log('selectedRoomFactory : ' + JSON.stringify(selectedRoomFactory, null, '\t'));
            //console.log('detail Factory : ' + JSON.stringify(detailFactory, null, '\t'));
            //console.log('Session Service : ' + JSON.stringify(SessionService, null, '\t'));
            //console.log('book data : ' + JSON.stringify(bookData, null, '\t'));

            if (!bookData.country) {
                bookData.country = "US"
            };
            if (!bookData.billingCountry) {
                bookData.billingCountry = "US";
            }

            //resets bookData credit card information to the test account for booking. Needed for expedia. 
            //bookData.ccNumber = "4444333322221111";
            //bookData.expMo = 5;
            //bookData.expYear = 2018;
            //bookData.secCode = 123;
            //bookData.ccName = "Visa";
            //bookData.street1 = "travelnow"; //"travelnow" indicates it’s a test booking for expedia. Tourico has to be done on special server

            var fixedCheckIn = getCorrectedDate(new Date(searchFactory.search.checkin));
            var fixedCheckOut = getCorrectedDate(new Date(searchFactory.search.checkout));

            var purchaseInfo = {
                "AgentId": SessionService.user.currentSession.identity.ice_agent_id,
                "PartnerId": SessionService.user.currentSession.identity.ice_partner_id,
                "BrandId": SessionService.user.currentSession.identity.ice_member_class_id,
                "Brand": SessionService.user.currentSession.identity.ice_member_class_name,
                "MemberId": SessionService.user.currentSession.identity.ice_member_id, 
                "NameId": SessionService.user.currentSession.identity.ice_name_id,
                "Locale": SessionService.user.currentSession.display_options.Locale,
                "CurrencyCode": SessionService.user.currentSession.display_options.currency_code,
                "CountryCode": SessionService.user.currentSession.display_options.country_code,

                "SupplierId": selectedRoomFactory.roomDetails.available_supplier_id,
                "HotelId": selectedRoomFactory.roomDetails.available_supplier_hotel_id,
                "RoomBookData": selectedRoomFactory.roomDetails.available_roombookdata,
                "QuotedPrice": selectedRoomFactory.roomDetails.available_bookingcost,
                "MasterHotelId": detailFactory.details.HotelContent.master_id,
                "MarketRoomData": selectedRoomFactory.roomDetails.market_roombookdata,
                "CashbackEarned" : bookData.cashbackEarned,

                "CheckInDate": fixedCheckIn,
                "CheckOutDate": fixedCheckOut,

                "NumAdults": searchFactory.search.numAdults,
                "ChildAges": searchFactory.search.childages,

                "ContactFirstName": bookData.firstName,
                "ContactLastName": bookData.lastName,
                "ContactAddress": bookData.street1, 
                "ContactCity": bookData.city,
                "MarketRate": bookData.marketRate,
                "MarketTax": bookData.marketTax,
                "ContactRegion": bookData.state_province,
                "ContactCountry": bookData.country,
                "ContactPostalCode": bookData.postal_code,
                "ContactPhone": bookData.phone,
                "ContactEmail": bookData.email,
                "ConfirmEmails": bookData.confirmEmails,
                "CardPayments":
                [
                  {
                      "CardNumber": bookData.ccNumber,
                      "CardType": bookData.ccName,
                      "CvvCode": bookData.ccSecCode,
                      "ExpirationMonth": bookData.expMo,
                      "ExpirationYear": bookData.expYear,
                      "FirstName": bookData.cardFirstName,
                      "LastName": bookData.cardLastName,
                      "Address": bookData.billingStreet1,
                      "City": bookData.billingCity,
                      "Region": bookData.billingState_province,
                      "PostalCode": bookData.billingZip,
                      "Country": bookData.billingCountry,
                      "Phone": bookData.billingPhone,
                      "Amount": bookData.yourPrice,
                  }
                ],
                "VcPayment": { "Amount": bookData.finalVC },
                "DbcPayment": { "Amount": bookData.finalDBC }

            };
            purchaseInfo.PurchaseRate = bookData.marketRate.toString();
            purchaseInfo.MarketRate = bookData.marketRate.toString();
            purchaseInfo.MarketTax = bookData.marketTax.toString();

            //console.log('Book service call being passed to controller : ' + JSON.stringify(purchaseInfo, null, '\t'));
            //this needs to be put back to purchaseInfo instead of bookData
            bookPurchaseFactory.update(purchaseInfo);

            return $http.post("/api/v1/book", purchaseInfo, { headers: { 'X-OVSAPIKEY': currentSession.current_api_key } }).
               success(function (data) {
                   /*recieve back a list of hotels that have already been searched by the passed in criteria. 
                     and set the flag to true that will change the display in the UI.  
                   */

                   returnedBook.responseData = data || {};
                   confirmationFactory.update(data);
                   //console.log('hotel book service response : ' + JSON.stringify(data, null, '\t'));
               }).
                error(function (data, status, headers, config) {
                  //  console.log('There was an error and the purchase was not conducted : ' + JSON.stringify(data, null, '\t'), status, headers, config);
                        LogglyLogger.fields({ info: JSON.stringify(data, null, '\t') + status + headers + config });
                        $log.error("Booking Error");
                    returnedBook.errorMessage = "An error has occured in retrieving the purchse of your hotel";
                });
        }
        return returnedBook;
    };

})();







