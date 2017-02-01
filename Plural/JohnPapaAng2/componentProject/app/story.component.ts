import { Component } from '@angular/core';

@Component({
  moduleId: module.id,
  selector: 'my-story',
  template: `
    <h3>{{story.name}}</h3>
    <h3 [innerText]="story.name"></h3>
    <div [style.color]="color">{{story.name}}</div>
  `
})
export class StoryComponent {
  story = { id: 100, name: 'The Force Awakens' };
  color = 'blue';
}


/*
Copyright 2016 JohnPapa.net, LLC. All Rights Reserved.
Use of this source code is governed by an MIT-style license that
can be found in the LICENSE file at http://bit.ly/l1cense
*/