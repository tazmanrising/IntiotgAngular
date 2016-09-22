"use strict";
var router_1 = require('@angular/router');
var welcome_component_1 = require('./home/welcome.component');
var device_routes_1 = require('./devices/device.routes');
exports.routes = [
    { path: '', redirectTo: '/welcome', pathMatch: 'full' },
    { path: 'welcome', component: welcome_component_1.WelcomeComponent }
].concat(device_routes_1.DeviceRoutes);
exports.APP_ROUTER_PROVIDERS = [
    router_1.provideRouter(exports.routes)
];
//# sourceMappingURL=app.routes.js.map