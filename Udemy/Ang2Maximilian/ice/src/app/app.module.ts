import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';

import { AppComponent } from './app.component';
import { OtherComponent } from './other/other.component';
import { AnotherComponent } from './another.component';
import { DatabindingComponent } from './databinding/databinding.component';
import { PropertyBindingComponent } from './databinding/property-binding.component';
import { EventBindingComponent } from './databinding/event-binding.component';
import { TwoWayBindingComponent } from './databinding/two-way-binding.component';
import { LifecycleComponent } from './lifecycle.component';
import { FirstAppComponent } from './first-app.component';
// added OtherComponent automatically from ng generate 

@NgModule({
  declarations: [
    AppComponent,
    OtherComponent,
    AnotherComponent,
    DatabindingComponent,
    PropertyBindingComponent,
    EventBindingComponent,
    TwoWayBindingComponent,
    LifecycleComponent,
    FirstAppComponent
     // added automatically with ng generate command
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
