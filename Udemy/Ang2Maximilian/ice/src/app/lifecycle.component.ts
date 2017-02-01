import { 
  Component, 
  OnInit, 
  OnChanges, 
  DoCheck, 
  AfterContentInit, 
  AfterContentChecked, 
  AfterViewInit, 
  AfterViewChecked, 
  OnDestroy,
  Input
} from '@angular/core';

@Component({
  selector: 'fa-lifecycle',
  template: `
    <ng-content></ng-content>
  `,
  styles: []
})
export class LifecycleComponent implements OnChanges, OnInit,DoCheck, AfterContentInit,
 AfterContentChecked, AfterViewInit, AfterViewChecked, OnDestroy {
 
 
    //@Input() result: number = 0;  //  result  string interpol.   
  // @Input metadata  bindable from the outside
   //property binding
   @Input() bindable = 1000;

  constructor() { 
  }

 ngOnChanges() {
        this.log('ngOnChanges');
    }

    ngOnInit() {
        this.log('ngOnInit');
        //console.log(this.boundContent);
    }

    ngDoCheck() {
        this.log('ngDoCheck');
    }

    ngAfterContentInit() {
        this.log('ngAfterContentInit');
    }

    ngAfterContentChecked() {
        this.log('ngAfterContentChecked');
    }

    ngAfterViewInit() {
        this.log('ngAfterViewInit');
    }

    ngAfterViewChecked() {
        this.log('ngAfterViewChecked');
    }

    ngOnDestroy() {
        this.log('ngOnDestroy');
    }

    // add a priveate method
    private log(hook: string){
      console.log(hook);
    }

}
