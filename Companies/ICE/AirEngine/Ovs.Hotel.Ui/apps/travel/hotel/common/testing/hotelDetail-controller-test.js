
describe('Basic connectivity tests for the Detail Controller', function () {

    var HotelsDetailController, scope, HotelsDetailService;


    beforeEach(module('hotels'));

    beforeEach(inject(function ($controller, $rootScope) {
        scope = $rootScope.$new();
        HotelsDetailController = $controller('HotelsDetailController', {
            $scope: scope
        });

    }));

    it('tests that data is being sent from the controller by returning true', function () {
        expect(scope.testConnection).toBe(true);
    });


    describe('tests object coming from hotel Detail service', function () {

        it('is supposed to test service connection by being true', function () {
            expect(scope.test).toBe(true);
        });
        it('tests that getDetails search is defined', function () {
            expect(scope.getDetails).toBeDefined();
        });

    });




});
