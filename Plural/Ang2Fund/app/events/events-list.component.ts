import { Component } from '@angular/core'

@Component({
    selector: 'events-list',
    template: `<div>
                    <h1>Upcoming Angular 2 Events</h1>
                    <hr>
                    <event-thumbnail (eventClick)="handleEventClick($event)"
                    [event]="event1"></event-thumbnail>
                </div>
                `
    //templateUrl: 'app/events/events-list.component.html'
})
export class EventsListComponent {

    // notes
    // (eventClick) above MUST MATCH output in the thumbnail child component

    // $event  = 




    //create an event object 
    event1 = {
        id: 1,
        name: 'Angular Connect',
        date: '9/26/2017',
        time: '10:00 am',
        price: 599.99,
        imageUrl: '/app/assets/images/angularconnect-shield.png',
        location: {
            address: '1057 DT',
            city: 'London',
            country: 'English'
        }
    }

    handleEventClick(data) {
        console.log('received', data);
    }

}

