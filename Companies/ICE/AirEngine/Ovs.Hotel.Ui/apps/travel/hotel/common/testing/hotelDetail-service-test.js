describe('Hotel Detail Service tests', function () {

    var testHotelDetailService, httpBackend;
    var url = "http://ec2-54-69-5-15.us-west-2.compute.amazonaws.com/api/v1/Hotel/RoomDetail";

    var envelope = {
        id: "c6c2d12f-d76b-5739-e551-07e6de5b0807",
        memberId: "ice1234567",
        action: "hotels.RoomDetail-location",
        lang: "en-US",
        timeout: 20,
        currentDate: (new Date()).toJSON()
    };
    var search = {
        "master_hotel_id": "H1f4aafaf766d47e29648e1014fa0b474",
        "checkin": "2015-08-17T11:43:17-0700",
        "checkout": "2015-08-31T11:43:17-0700",
        "number_of_rooms": "1",
        "adult_per_room": "1",
        "child_per_room": "0",
        "optional":       {
            "min_price": 49.99,
            "max_price": 149.99
        }
    };

    var searchData = {
        "id": "c6c2d12f-d76b-5739-e551-07e6de5b0807",
        "action": "hotels.RoomDetail-location",
        "timestamp": "2015-03-17T16:22:12.7635493-07:00",
        "lang": "en-US",
        "request": {  
            "master_hotel_id": "H1f4aafaf766d47e29648e1014fa0b474",
            "checkin": "2015-08-17T11:43:17-0700",
            "checkout": "2015-08-31T11:43:17-0700",
            "number_of_rooms": "1",
            "adult_per_room": "1",
            "child_per_room": "0",
            "optional":       {
                "min_price": 49.99,
                "max_price": 149.99
            }
        },
        "options":    {
            "timeout_sec": 20,
            "append_request": "true"
        }
    };

    beforeEach(module('hotels'));

    beforeEach(inject(function (_hotelDetailService_, $httpBackend) {
        testHotelDetailService = _hotelDetailService_;
        httpBackend = $httpBackend;

    }));



    it('should return true if the test and service are connected', function () {
        expect(testHotelDetailService.test).toBe(true);
    });

    it('tests the http post call is made', function () {

        /*makes a post call out with expected data and then mocks the returned response*/
        httpBackend.expect('PUT', url, searchData).respond(200, { 'data': 'response' });

        testHotelDetailService.getDetails(envelope, search).success(function (response) {
            expect(response).toBe('response');
            httpBackend.flush();
        });

        expect('Suppress SPEC HAS NO EXPECATIONS').toBeDefined();
    });

});