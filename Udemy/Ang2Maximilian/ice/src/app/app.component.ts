import { Component } from '@angular/core';

// @Component decorator is added
@Component({
  selector: 'app-root', // what allows us to USE it
  template: `
    <p>skynet parser</p>
    <fa-databinding></fa-databinding>
  `,
  //using template instead of templateUrl
  // fa-other is selector name from other.component.ts
  /*
  template: `
    <p>>> Skynet parser</p>
    <fa-other></fa-other>  
    <br>
    <fa-another>
    test
    </fa-another>
    <fa-another></fa-another>
  `,
  */
  // can use #app-root if <div id="app-root">
  // like a css selector
  // index.html has <app-root>...
  //templateUrl: './app.component.html',  // html can be inline
  // template: `
  //       <h1>Inline template</h1>
  //         `     
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = '>> skynet running';
}

// angular 2 gets started by dynamically adding in script in the 
// scripts 

// main.ts runs first  , it bootstraps (runs) application 

// bootstrapModule(..)

// app.module.ts file then bootstrap: [AppComponent]

/// =================

/// take away 

/*

main.ts -> 


app.module.ts  

import and export ...

@NgModule  this decorator

declarations which tells what component to run 

imports  
   BrowserModule   
   FormsModule   for forms  

   providers    application services 
*/