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
/**
 * Created by L on 8/29/2016.
 */
var core_1 = require('@angular/core');
var _ = require('underscore');
var index_1 = require('./_services/index');
var AppComponent = (function () {
    function AppComponent(pagerService) {
        this.pagerService = pagerService;
        // dummy array of items to be paged
        this.dummyItems = _.range(0, 499);
        //private dummyItems = _.range(1, 251);
        // pager object
        this.pager = {};
    }
    AppComponent.prototype.ngOnInit = function () {
        // initialize to page 1
        this.setPage(1);
    };
    AppComponent.prototype.setPage = function (page) {
        if (page < 1 || page > this.pager.totalPages) {
            return;
        }
        // get pager object from service
        this.pager = this.pagerService.getPager(this.dummyItems.length, page);
        // get current page of items
        this.pagedItems = this.dummyItems.slice(this.pager.startIndex, this.pager.endIndex + 1);
    };
    AppComponent = __decorate([
        core_1.Component({
            moduleId: module.id,
            selector: 'app',
            templateUrl: 'app.component.html'
        }), 
        __metadata('design:paramtypes', [index_1.PagerService])
    ], AppComponent);
    return AppComponent;
}());
exports.AppComponent = AppComponent;
//# sourceMappingURL=app.component.js.map