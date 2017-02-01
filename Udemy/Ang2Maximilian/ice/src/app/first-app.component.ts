import { Component } from '@angular/core';

//import { DatabindingComponent} from './lifecycle.component'

@Component({
  //moduleId: module.id,
  selector: 'first-app-app',
  template: `
    <h1>Root Component</h1>
    <fa-lifecycle *ngIf="!delete" [bindable]="1000">
      <p>{{test}}</p>
    </fa-lifecycle>
    <button (click)="delete = true">Click to Delete</button>
    `,
    styles: []
    //directives: [DatabindingComponent]
})
export class FirstAppComponent {
  //default of delete is a property set to false
  delete = false;
  test = 'Starting Value';


  // add a directive that is *ngIf="!delete"  
  //only add to DOM is delete is not true
}
