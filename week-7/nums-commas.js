// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode

// Define a function called separateComma
//    turn number to a string
//    reverse the string
//    create a counter object - start at 0
//    create a loop that will run until the string terminates
//        add 1 to the counter for every character in the string
//        IF character at index of (counter + 4) exists
//            IF counter's place is divisible by three
//                insert comma in between index 2 and index 3
//        ELSE
//            terminate loop
//             reverse string again
//              return string to user
// Output - a string that is the integer with inserted commas


// Initial Solution


function separateComma(int){
  var array = int.toString().split("").reverse();
  var counter = 0;
  while (counter <= array.length) {
    if (array[(counter + 3)] != null){
        array.splice((counter+3),0,",");
        counter += 4;
    } else {
        break;
    }
  array = array.reverse().toString()
  }
  return array
}



// Refactored Solution


function separateComma(int){
  return int.toLocaleString()
}




// Your Own Tests (OPTIONAL)




// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
//Some of the techniques we used were the same, like turning the integer into an array and reversing it, but using a counter and a while loop to track the position of iteration was different from how I used Ruby.
// What did you learn about iterating over arrays in JavaScript?
// I learned that it can be functionally the same as in Ruby, but the syntax is just a little different.
// What was different about solving this problem in JavaScript?
// In JS, I didn't have a helpful method like each_slice to help me get the pieces I needed, but I think this solution is actually cleaner than my Ruby solution, looking back. It probably helped having a partner to look things over.
// What built-in methods did you find to incorporate in your refactored solution?
// We used splice to get the commas in where we needed them. We also used reverse, split, and toString to get our information looking the way we needed in order to manipulate it.
