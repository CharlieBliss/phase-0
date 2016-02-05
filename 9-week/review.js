// Method to create a list
// input: string of items separated by spaces (example: "carrots apples cereal pizza")
// steps: We would want to create a hash that used each item and its respective quantity to be represented by each key value pair.
//   [fill in any steps here]
// Separate strings into individual item
// Assign each of the elements to a key in the hash.
// Set a default value(0)
//   set default quantity
//   print the list to the console [can you use one of your other methods here?]
// output: Grocery hash
// INITIAL SOLUTION:



// var listCreator = function(array){
//   var list = {}
//   for (var n of array){
//     list[n] = 0;

//   }
//   return list
//     }

// var groceryList = listCreator(['apples','oranges','stuff'])


// // Method to add an item to a list
// // input: item name and optional quantity
// // steps:
// // Take the original hash and a new key/value pair
// // Insert the new Key/value pair into the original hash
// // output:
// // updated hash with new key/value pairs

// var listAdder = function(list, item, quantity){
//   list[item] = quantity;
//   return list

// }

// listAdder(groceryList, 'milk', 3)

// console.log(groceryList)

// // Method to remove an item from the list
// // input:a hash and the name of an item
// // steps:Input of an item for specific hash and remove said item
// // output:A hash with desired item removed

// var listDeleter = function(list, item){
//   delete list[item]
//   return list
// }

// listDeleter(groceryList,'stuff')
// console.log(groceryList)

// // Method to update the quantity of an item
// // input: original hash,grocery item ,quantity of that item
// // steps:
// // Take the original hash and grocery item input
// // update the value of the key/value pair assigned to that grocery item
// // return the updated hash
// // output:the updated hash


// var listUpdater = function(list,item,quantity){
//   list[item] = quantity;
//   return list
// }

// listUpdater(groceryList,"apples",15)
// console.log(groceryList)


// // Method to print a list and make it look pretty
// // input: Updated Hash
// //steps:For each element of the hash we can print "You have __  ___"
// // output: A string including updated values in a pretty format

// var listPrinter = function(list){
//   for (var key in list) {
//   if (list.hasOwnProperty(key)) {
//     console.log("You have " + list[key] +" "+ key);
//   }

// }
// }

// listPrinter(groceryList)


// Refactored Solution


// List Creator

var listCreator = function(array){
  var list = {}
    for (var n of array){
      list[n] = 0;
    }
  return list
}

//List Adder and Updater

var listAdderUpdater = function(list,item,quantity){
  list[item] = quantity;
  return list
}

//List Remover

var listDeleter = function(list, item){
  delete list[item]
  return list
}


//List Printer
var listPrinter = function(list){
  for (var key in list) {
    if (list.hasOwnProperty(key)) {
      console.log("You have " + list[key] +" "+ key);
    }
  }
}



