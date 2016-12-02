class Car {

    engineType: number;
    constructor(engine: number) {
        this.engineType = engine;


        //js

        // var to declare   num = name of variable and  2 is number value
        var num = 2;  // Type Inference  assume it is a number

        // TypeScript 
        // :  annotation     number is type
        var numm: number = 2;  

        var num2: number;  // must be a number  not initialized
        



    }






    start() {
        alert('engine started' + this.engineType);
    }
}

// can use function keyword outside of the typescript class
function startOutside() {
    // normal javascript
}

//  tsc main.ts    at cmd prompt will create the .js file