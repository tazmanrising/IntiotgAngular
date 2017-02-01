
describe('Basic connectivity tests for the Search Controller', function () {

    var HotelsSearchController, scope, hotelSearchService;
    

    beforeEach(module('hotels'));

    beforeEach(inject(function ($controller, $rootScope) {
        scope = $rootScope.$new();
        HotelsSearchController = $controller('HotelsSearchController', {
            $scope : scope
        });

    }));

    it('tests that data is being sent from the controller by returning true', function () {
        expect(scope.testConnection).toBe(true);
    });

    describe('tests object coming from hotel search service', function () {

        it('tests service connection by being true', function () {
            expect(scope.test).toBe(true);
        });
        it('tests that getHotels search is defined', function () {
            expect(scope.getHotels).toBeDefined();
        });

    });

 


});
