// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!


function fac(n){
  if (n == 0)
    return 1;
  else
    return fac(n-1) * n;
}

console.log(fac(3));
// Program Structure
// Write your own variable and do something to it.
var funky3s = 3 * "3" * (3.0) * (3+0)
console.log(funky3s)
funky3s = funky3s -3
console.log(funky3s)

/*var answer = prompt("What's your favorite kind of food?");
  if ((!answer)===false)
    alert("Mine Too!!");
  else
    alert("ok...See you later...");
*/
// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

var triangle = "";
while (triangle.length < 8){
  console.log(triangle)
  triangle += "#";}



for (var number = 0; number <= 100;number+=1){
    if  (number % 5 == 0 && number % 3 == 0)
      console.log("FizzBuzz");
    else if (number % 5 == 0)
      console.log ("Buzz");
     else if
     (number % 3 == 0)
      console.log ("Fizz");
      else
        console.log(number)
    }




// Functions

// Complete the `minimum` exercise.

function minumum(x, y){
  if (x > y)
    return y;
  else
    return x;
}


console.log(minumum(599,10))
// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name : "Charlie",
  favorite_foods : ["Wings","Salsa Verde", "Bulgogi"],
  quirk : "Not Interesting",
}
console.log(me.name)
