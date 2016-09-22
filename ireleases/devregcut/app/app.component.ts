import { Component } from '@angular/core';
import { HTTP_PROVIDERS } from '@angular/http';
import { ROUTER_DIRECTIVES } from '@angular/router';

import { DeviceService } from './devices/device.service';

@Component({
  selector: 'pm-app',
  template: `
    <h1>Device Registry Manager</h1>
    `,
    //directives: [ROUTER_DIRECTIVES],
    providers: [DeviceService,
                HTTP_PROVIDERS] 
})

export class AppComponent { 
  //pageTitle: string = "Device Registry";
}
