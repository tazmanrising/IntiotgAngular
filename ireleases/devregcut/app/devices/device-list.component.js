"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var core_1 = require('@angular/core');
var router_1 = require('@angular/router');
var device_service_1 = require('./device.service');
var DeviceListComponent = (function () {
    // products: IProduct[] = [ // any[] = [
    //     {
    //         "productId": 2,
    //         "productName": "Garden Cart",
    //         "productCode": "GDN-0023",
    //         "releaseDate": "March 18, 2016",
    //         "description": "15 gallon capacity rolling garden cart",
    //         "price": 32.99,
    //         "starRating": 4.2,
    //         "imageUrl": "http://openclipart.org/image/300px/svg_to_png/58471/garden_cart.png"
    //     },
    //     {
    //         "productId": 5,
    //         "productName": "Hammer",
    //         "productCode": "TBX-0048",
    //         "releaseDate": "May 21, 2016",
    //         "description": "Curved claw steel hammer",
    //         "price": 8.9,
    //         "starRating": 4.8,
    //         "imageUrl": "http://openclipart.org/image/300px/svg_to_png/73/rejon_Hammer.png"
    //     }
    // ];
    //products: IProduct[];
    //devices: IDevice[];
    //private _productService;
    function DeviceListComponent(router, _deviceService) {
        this.router = router;
        this._deviceService = _deviceService;
        this.pageTitle = 'Device List';
        this.showImage = false;
        this.listFilter = '';
        // _productService = productService;
    }
    DeviceListComponent.prototype.ngOnInit = function () {
        //
        // this.products = this._productService.getProducts();
        var _this = this;
        this._deviceService.getDevices()
            .subscribe(function (devices) { return _this.devices = devices; }, 
        //.subscribe(products => this.products = products,
        function (error) { return _this.errorMessage = error; });
    };
    DeviceListComponent.prototype.toggleImage = function () {
        this.showImage = !this.showImage;
    };
    DeviceListComponent.prototype.onRatingClicked = function (message) {
        //this.pageTitle = 'Product List: ' + message;
        this.message = message;
    };
    DeviceListComponent = __decorate([
        core_1.Component({
            selector: 'pm-devices',
            templateUrl: 'app/devices/device-list.component.html'
        }), 
        __metadata('design:paramtypes', [router_1.Router, device_service_1.DeviceService])
    ], DeviceListComponent);
    return DeviceListComponent;
}());
exports.DeviceListComponent = DeviceListComponent;
//# sourceMappingURL=device-list.component.js.map