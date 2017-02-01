import { NgModule }      from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

//import { AppComponent }  from './app.component';
import { EventsAppComponent }  from './events-app.component';
import {EventsListComponent} from './events/events-list.component'
import {EventThumbnailComponent} from './events/event-thumbnail.component'

@NgModule({
  imports:      [ BrowserModule ],
  //declarations: [ AppComponent ],
  //bootstrap:    [ AppComponent ]
  declarations: [
    EventsAppComponent,
    EventsListComponent,
    EventThumbnailComponent
    ],
  bootstrap: [EventsAppComponent]
})
export class AppModule { }
