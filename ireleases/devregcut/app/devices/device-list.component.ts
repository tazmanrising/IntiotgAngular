import { Component, OnInit }  from '@angular/core';
import { Router, ROUTER_DIRECTIVES } from '@angular/router';
//import { IProduct } from './product'

import { IDevice } from './device'

import { DeviceService } from './device.service';

@Component({
    selector: 'pm-devices',
    templateUrl: 'app/devices/device-list.component.html'
})
export class DeviceListComponent implements OnInit {
    pageTitle: string = 'Device List';
    showImage: boolean = false;
    listFilter: string = '';
    message: string;
    errorMessage: string;
    devices: IDevice[];
    
    
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
    constructor(private router: Router,
                private _deviceService: DeviceService) {
           // _productService = productService;
    }



    ngOnInit(): void {
        //
       // this.products = this._productService.getProducts();

       this._deviceService.getDevices()
                .subscribe(
                    devices => this.devices = devices,
                //.subscribe(products => this.products = products,
                error => this.errorMessage = <any>error);

    }

    toggleImage(): void {
        this.showImage = !this.showImage;
    }

    onRatingClicked(message: string): void {
        //this.pageTitle = 'Product List: ' + message;
        this.message = message;
    }

   

}