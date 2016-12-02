var x = 1;

var y;  // any   type inference cannot determine the type


function addNumbers(n1: number, n2, n3){
    var result = n1 + n2 + n3;
    var msg = 'Sum is = ' + result;
    alert(msg);
}

addNumbers(3,4,8);

