// JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up




// Bulk Up

var charlie = {
  name: "Charlie",
  event: "Coding",
}

var jerrie = {
  name: "Jerrie",
  event: "Javascript",}

var athletes = [charlie,jerrie]

var bulker = function (athlete_name){
  for (var n of athlete_name){
  n.win = (n.name + ' '+ 'has won the' + ' ' + n.event);
  }
}
bulker(athletes)

console.log(charlie.win)


// Jumble your words

var jumble = function(string) {
  return string.split("").reverse().join("");
}
console.log(jumble("AAFGTTrttr!!"))

// 2,4,6,8
var even_numbers = function(array){
  return array % 2 == 0;
}
  var filtered = [1,2,3,4,5,6].filter(even_numbers);
console.log(filtered)


// "We built this city"

var Athlete = function(name,age,sport,quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

// Driver Code
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection