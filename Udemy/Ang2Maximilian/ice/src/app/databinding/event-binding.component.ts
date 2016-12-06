import { Component, EventEmitter, Output } from '@angular/core';

@Component({
  selector: 'fa-event-binding',
  template: `
   <button (click)="onClicked()">click</button>
  `,
  styles: []
})
export class EventBindingComponent  {
 
  //custom event
  //clicked = new EventEmitter(); // this will work 

  // listen to it with @Output      // event of type string
  @Output() clicked = new EventEmitter<string>();

 
  onClicked() {
    //alert('works');
    this.clicked.emit('event click');  // click property  emit method
  }
}
