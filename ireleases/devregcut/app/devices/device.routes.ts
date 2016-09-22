import { RouterConfig } from '@angular/router';

import { DeviceListComponent } from './device-list.component';
import { DeviceDetailComponent } from './device-detail.component';

export const DeviceRoutes: RouterConfig = [
  { path: 'devices', component: DeviceListComponent },
  { path: 'device/:id', component: DeviceDetailComponent }
];
