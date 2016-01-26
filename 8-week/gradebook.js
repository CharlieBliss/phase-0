/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

// var gradebook = {};

// gradebook.Joseph = {};
// gradebook.Susan = {};
// gradebook.William = {};
// gradebook.Elizabeth = {};

// gradebook.Joseph.testScores = scores[0];
// gradebook.Susan.testScores = scores[1];
// gradebook.William.testScores = scores[2];
// gradebook.Elizabeth.testScores = scores[3];

// gradebook.addScore = function(name, score){
//   gradebook[name].testScores.push(score);
// };

// gradebook.getAverage = function(name){
//   return average(gradebook[name].testScores)
// };

// var average = function(num_array){
//   var sum = 0;
//   for(var n = 0; n < num_array.length; n++){
//     sum += num_array[n];
//   }
//   return sum / num_array.length
// }
















// __________________________________________
// Refactored Solution


var gradebook = {};

for(var n in students){
 gradebook[students[n]] = {};}

for(var n in students){
gradebook[students[n]].testScores = scores[n];}

gradebook.addScore = function(name, score){
  gradebook[name].testScores.push(score);
};


var average = function(num_array){
  var sum = num_array.reduce(function(a, b) { return a + b; });
  var avg = sum / num_array.length;
return avg
}

gradebook.getAverage = function(name){
  return average(gradebook[name].testScores)
};








// __________________________________________
// Reflect



// What did you learn about adding functions to objects?
// Adding functions to objects is basically the same as adding any other property to objects, with the exception of needing to additionally define the function after you add it. You can then call it the smae way that you would access any property of the object.
// How did you iterate over nested arrays in JavaScript?
// We simply wrote the arrays like they were written, so outerarray[innerarray[x]]. We nested the notation, unlike Ruby, where you write outer[inner][x].
// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
// We incorporated push, which appends an element to an array the same way as in Ruby. We also used reduce, which calls a block of code on each element of an array and returns the accumulated result. We used this to find the sum of the elements in a slightly cleaner way.






// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)