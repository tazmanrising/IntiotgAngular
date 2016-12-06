//import { Component, OnInit } from '@angular/core';
import { Component, Input} from '@angular/core';

@Component({
  selector: 'fa-property-binding',
  ////  could use ngcontent,  but we can do it another way
  // with {{}} and  result 
  template: `
  {{result}} 
  `,
  styles: []
})

export class PropertyBindingComponent {
  @Input() result: number = 0;  //  result  string interpol.   
  // @Input metadata  bindable from the outside
}

/*
export class PropertyBindingComponent implements OnInit {

  constructor() { }

  ngOnInit() {
  }

}
*/