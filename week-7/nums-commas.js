// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode



// Initial Solution


console.log(separateComma(565673757575347))
 var array = int.toString().split("").reverse();
 var counter = 0;
 while (counter <= array.length){
       array.splice((counter+3),0,",");
       counter += 4;
   }
 }


 return array.reverse().join("")
}7


// Refactored Solution




// Your Own Tests (OPTIONAL)




// Reflection