import { provideRouter, RouterConfig } from '@angular/router';

import { WelcomeComponent } from './home/welcome.component';
import { DeviceRoutes }        from './devices/device.routes';

export const routes: RouterConfig = [
  { path: '', redirectTo: '/welcome', pathMatch: 'full'},
  { path: 'welcome', component: WelcomeComponent },
  ...DeviceRoutes
];

export const APP_ROUTER_PROVIDERS = [
  provideRouter(routes)
];
