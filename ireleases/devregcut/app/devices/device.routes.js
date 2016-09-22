"use strict";
var device_list_component_1 = require('./device-list.component');
var device_detail_component_1 = require('./device-detail.component');
exports.DeviceRoutes = [
    { path: 'devices', component: device_list_component_1.DeviceListComponent },
    { path: 'device/:id', component: device_detail_component_1.DeviceDetailComponent }
];
//# sourceMappingURL=device.routes.js.map