//import { provideRouter, RouterConfig } from '@angular/router';
//import { Routes, RouterModule } from '@angular/router';

// import { WelcomeComponent } from './home/welcome.component';
// import { DeviceRoutes }        from './devices/device.routes';

// export const routes: RouterModule = [
//   { path: '', redirectTo: '/welcome', pathMatch: 'full'},
//   { path: 'welcome', component: WelcomeComponent },
//   ...DeviceRoutes
// ];

// export const APP_ROUTER_PROVIDERS = [
//   Routes(routes)
// ];

//https://angular.io/docs/ts/latest/guide/router.html

import { ModuleWithProviders } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

const appRoutes: Routes = [
  { path: '', component: WelcomeComponent }//,

];

export const appRoutingProviders: any[] = [

];

export const routing: ModuleWithProviders = RouterModule.forRoot(appRoutes);
