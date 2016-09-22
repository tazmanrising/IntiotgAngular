"use strict";
//import { AppModule } from './app.module';
//const platform = platformBrowserDynamic();
//platform.bootstrapModule(AppModule);
// Our main component
var app_component_1 = require('./app.component');
// Our main routes
var app_routes_1 = require('./app.routes');
bootstrap(app_component_1.AppComponent, [
    app_routes_1.APP_ROUTER_PROVIDERS
])
    .catch(function (err) { return console.error(err); });
//# sourceMappingURL=main.js.map