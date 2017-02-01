import { Component, Input, Output, EventEmitter  } from '@angular/core'

@Component({
  selector: 'event-thumbnail',
  template: `
    <div class="well hoverwell thumbnail">
      <h2>{{event?.name}}</h2>
      <div>Date: {{event?.date}}</div>
      <div [ngStyle]="getStartTimeStyle()" [ngSwitch]="event?.time">
        Time: {{event?.time}}
        <span *ngSwitchCase="'8:00 am'">(Early Start)</span>
        <span *ngSwitchCase="'10:00 am'">(Late Start)</span>
        <span *ngSwitchDefault>(Normal Start)</span>
      </div>
      <div>Price: \${{event?.price}}</div>
      <div *ngIf="event?.location">
        <span>Location: {{event?.location?.address}}</span>
        <span class="pad-left">{{event?.location?.city}}, {{event?.location?.country}}</span>
      </div>
      <div *ngIf="event?.onlineUrl">
        Online URL: {{event?.onlineUrl}}
      </div>
    </div>
    <div>
      <button class="btn btn-primary" (click)="handleClickMe()">Click me</button>
    </div>
  `,
  styles: [`
    .thumbnail { min-height: 210px; }
    .pad-left { margin-left: 10px; }
    .well div { color: #bbb; }
  `]
})
export class EventThumbnailComponent {
  // Pass data in  
  @Input() event:any

  // this component is the child component
  // we do need to add in the output 
  @Output() eventClick = new EventEmitter();

  handleClickMe() {
    //console.log('clicked');
    //this.eventClick.emit('foo');
    this.eventClick.emit(this.event.name);
    
    // need to add another event handler to the parent component in order for it to work
    // parent is events-list.component 
  }

  //

  // event:any    any data type 
  // @Input() decorator says to pass it in 



  getStartTimeStyle() {
    if (this.event && this.event.time === '8:00 am')
      return {color: '#003300', 'font-weight': 'bold'}
    return {}
  }
}