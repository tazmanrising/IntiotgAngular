import { Component, OnInit, OnDestroy } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';

import { IDevice } from './device';
import { DeviceService } from './device.service';
//import { StarComponent } from '../shared/star.component';

@Component({
    templateUrl: 'app/devices/device-detail.component.html'//,
   // directives: [StarComponent]
})
export class DeviceDetailComponent implements OnInit, OnDestroy {
    pageTitle: string = 'Device Detail';
    device: IDevice;
    errorMessage: string;
    private sub: any;

    constructor(private route: ActivatedRoute,
                private router: Router,
                private _deviceService: DeviceService) {
    }

    ngOnInit(): void {
        this.sub = this.route.params.subscribe(
            params => {
                let id = +params['id'];
                this.getDevice(id + "");
        });
    }

    ngOnDestroy() {
        this.sub.unsubscribe();
    }

    getDevice(id: string) {
        this._deviceService.getDevice(id).subscribe(
            device => this.device = device,
            error => this.errorMessage = <any>error);
    }

    onBack(): void {
        this.router.navigate(['/devices']);
    }

    onRatingClicked(message: string): void {
        this.pageTitle = 'Device Detail: ' + message;
    }
}
