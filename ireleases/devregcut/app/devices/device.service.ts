import { Injectable } from '@angular/core';
import { Http, Response } from '@angular/http';

import { Observable } from 'rxjs/Observable';

import { IDevice } from '../devices/device'

@Injectable()
export class DeviceService {

    // fake the web server 
    //private _productUrl = 'api/products/products.json';
    private _deviceUrl = 'api/devices/devices.json';

    //private _productUrl = 'http://localhost:42822/api/device';


    constructor(private _http: Http) { }

    getDevices(): Observable<IDevice[]> {//Observable<IProduct[]> {
        return this._http.get(this._deviceUrl)
            .map((response: Response) => <IDevice[]>response.json())
            //.map((response: Response) => <IProduct[]>response.json())
            .do(data => console.log("All: " + JSON.stringify(data)))
            .catch(this.handleError);
    }

    getDevice(id: string): Observable<IDevice> {
        return this.getDevices()
            .map((devices: IDevice[]) => devices.find(p => p.DeviceId === id))
    }

    private handleError(error: Response) {
        console.error(error);
        return Observable.throw(error.json().error || 'Server error');
    }

    // getProducts(): IProduct[] {
    //     return [
    //         {
    //             "productId": 2,
    //             "productName": "Garden Cart",
    //             "productCode": "GDN-0023",
    //             "releaseDate": "March 18, 2016",
    //             "description": "15 gallon capacity rolling garden cart",
    //             "price": 32.99,
    //             "starRating": 4.2,
    //             "imageUrl": "http://openclipart.org/image/300px/svg_to_png/58471/garden_cart.png"
    //         },
    //         {
    //             "productId": 5,
    //             "productName": "Hammer",
    //             "productCode": "TBX-0048",
    //             "releaseDate": "May 21, 2016",
    //             "description": "Curved claw steel hammer",
    //             "price": 8.9,
    //             "starRating": 4.8,
    //             "imageUrl": "http://openclipart.org/image/300px/svg_to_png/73/rejon_Hammer.png"
    //         }
    //     ];

    // }


}