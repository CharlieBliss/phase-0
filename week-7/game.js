// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Ben is really tired from a long day of customer service, get him to bed so he can dream about having a better life! Watch out for stress dreams!
// Goals:Get Ben to Bed, dream successfully, try to forget about tiresome life as a faceless employee
// Characters:Ben, Mr. Braxton, Spaceman Ben, Cowboy Ben
// Objects: Ben(position,sleepstatus,sleepiness,confidence,workdaystress), Ben's Bed, Ben's Invasive Thoughts, Ben's Space Dream, Ben's Cowboy Dream, Ben's Stress Dream, Ben's Romance Dream, Ben's Embarassing Romance Nightmare
// Functions:Ben(MoveRight,Moveup,MoveDown,MoveLeft,brushTeeth,skipBrushingTeeth,getInBed)

// Pseudocode
//Create object ben
// assign properties like name, job, teeth, position, sleepstatus, and confidence
//Create object bensbed
//assign position, comfort
//Create object representing bens invasice thoughts
// write a few thoughts and assign them as properties
//Create object bens dream
//write dreams and assign them as properties
//Create object bens nightmares
//write nightmares and assign them as properties
//Create function to assign workday stress
// Generate a random number between 1-100 to be the stress ben has accumulated over the day
//Create a function to make Ben brush his teeth
//  Change status of teeth to brushed
//  Add to status of sleepiness
//Create a function to move ben right
// add 1 to ben's position,
//  have a chance to generate a random invasive thought
// IF ben has an invasive thought, decrease confidence
////Create a function to move ben left
// subtract 1 from ben's position,
//  have a chance to generate a random invasive thought
// IF ben has an invasive thought, decrease confidence
//Create a function to make ben sleep
// Create a formula to find ben's confidence when he goes to sleep
// Confidence equals confidence minus stress plus comfort
//  If ben's confidence is below a certain threshold, he has a stress dream/nightmare, otherwise he has a pleasant dream.


 // Initial Code
/*
var ben = {
  name: "Ben",
  job: "Customer Service Representative",
  teeth: "Unbrushed",
  position: -1,
  sleepstatus: "Awake",
  confidence: 50,
  workdaystress: 0,
  sleepiness: 50,
}

var bensBed = {
  position: 3,
  comfort: 35,
}

var bensInvasiveThoughts = {
  workThoughts: "You are going to die alone as a customer service rep",
  romanceThoughts: "Marcia watched you go to the water cooler and stayed at her desk. She hates you. She doesn't even hate you, she just doesn't care about you.",
  thoughts: "I wonder how many Chipotle Burritos I could eat if I just kept going",

}

var bensDream = {
  spaceDialogue: "I am a Starman, I tread among the gods!",
  cowboyDialogue: "YeeHaw, I'm the baddest Cowboy in the West!",
  romanceDialogue: "Hey Ben, it's Marcia, thanks for taking me to Medieval Times last night, how did you know that was my favorite restautant?",
}
  var bensNightmare = {
  stressDialogue: "Mr Braxton Wags his finger, 'Ben, you're wasting company time and money. And you're late. And for God's sake put some pants on.'",
  nightmareDialogue: "Marcia laughs, 'Hahahaha, you think I would ever go out with you? You're a joke. And put your pants on.'",
}

function brushTeeth() {
  ben.teeth = "Brushed",
  ben.sleepiness += 25;
  ben.confidence += 10
  console.log("Ben Brushes his teeth begrudgingly")
};

function generateWorkdayStress() {
  ben.workdaystress += (Math.floor((Math.random() * 100) + 1));
}

function randomProperty(obj) {
    var keys = Object.keys(obj)
    return obj[keys[ keys.length * Math.random() << 0]];
};

function moveRight() {
  ben.position += 1;
  if ((Math.floor((Math.random() * 100) + 1)) < 25){
    console.log(randomProperty(bensInvasiveThoughts))
    ben.confidence -= 10
  }

};
function moveLeft() {
  ben.position -= 1;

}

function goToSleep(){
  if (ben.position == 3){
    ben.confidence = (ben.confidence - ben.workdaystress + bensBed.comfort )
  }
  else{
    ben.confidence = (ben.confidence - ben.workdaystress)
  }
  if (ben.confidence > 30){
    console.log(randomProperty(bensDream))
  }
  else{
    console.log(randomProperty(bensNightmare))
  }
}

brushTeeth()
generateWorkdayStress()
moveRight()
moveRight()
moveRight()
moveRight()
goToSleep()


*/



// Refactored Code
console.log("Ben stares in the mirror after another day working as a customer service rep at FallT, where he constantly fields questions from disgruntled employees. His boss, Mr. Braxton, has been riding him all day about being distracted on the job, gazing out the window, checking his phone, talking to Marcia in Accounts. 'Only 40 more years,' he says to himself out loud. He wonders if he even has the energy to brush his teeth.")
var ben = {
  name: "Ben",
  job: "Customer Service Representative",
  teeth: "Unbrushed",
  position: -1,
  sleepstatus: "Awake",
  confidence: 50,
  workdaystress: 0,
  loneliness: 0,
  sleepiness: 50,
}

var bensBed = {
  position: 3,
  comfort: 35,
}

var bensInvasiveThoughts = {
  workThoughts: "You are going to die alone as a customer service rep",
  romanceThoughts: "Marcia watched you go to the water cooler and stayed at her desk. She hates you. She doesn't even hate you, she just doesn't care about you.",
  thoughts: "I wonder how many Chipotle Burritos I could eat if I just kept going",

}

var bensDream = {
  spaceDialogue: "I am a Starman, I tread among the gods!",
  cowboyDialogue: "YeeHaw, I'm the baddest Cowboy in the West!",
  romanceDialogue: "Hey Ben, it's Marcia, thanks for taking me to Medieval Times last night, how did you know that was my favorite restautant?",
}
  var bensNightmare = {
  stressDialogue: "Mr Braxton Wags his finger, 'Ben, you're wasting company time and money. And you're late. And for God's sake put some pants on.'",
  nightmareDialogue: "Marcia laughs, 'Hahahaha, you think I would ever go out with you? You're a joke. And put your pants on.'",
}

function brushTeeth() {
  ben.teeth = "Brushed",
  ben.sleepiness += 25;
  ben.confidence += 10
  console.log("Ben Brushes his teeth begrudgingly")
};

function generateWorkdayStress() {
  ben.workdaystress += (Math.floor((Math.random() * 100) + 1));
}

function randomProperty(obj) {
    var keys = Object.keys(obj)
    return obj[keys[ keys.length * Math.random() << 0]];
};

function move(direction) {
  if (direction == "left"){
  ben.position -= 1;}
  else if (direction == "right"){
  ben.position += 1}
  else {
    console.log("Ben just stands there, staring at his hands.")
  }
  if ((Math.floor((Math.random() * 100) + 1)) < 25){
    console.log(randomProperty(bensInvasiveThoughts))
    ben.confidence -= 10;}

}

function goToSleep(){
  if (ben.position == 3){
    ben.confidence = (ben.confidence - ben.workdaystress + bensBed.comfort )
  }
  else{
    ben.confidence = (ben.confidence - ben.workdaystress - ben.sleepiness)
  }
  if (ben.confidence > 30){
    console.log(randomProperty(bensDream))
  }
  else{
    console.log(randomProperty(bensNightmare))
  }
}
brushTeeth()
generateWorkdayStress()
move()
console.log(ben.position)
goToSleep()








// Reflection
/*
//What was the most difficult part of this challenge?
  The most difficult part for me was coming up with an idea for a game, but once I thought of something I liked, everything became a lot easier. The biggest technical challenge I had was creating a function to randomly sample from an object. I am sure there's an easier way to do it, but I couldn't find one.
What did you learn about creating objects and functions that interact with one another?
I learned that it's pretty easy to manipulate the status of objects, and I'm sure everything I learned about flow control from Ruby helped me better understand how to consistently update the status of variables and objects.
Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
The only built-in method that I thought would really help was Math.random and object.keys to access a random instance of the dreams and invasive thoughts. I didn't find any others that I really considered more useful than what I had.
How can you access and manipulate properties of objects?
There are many ways to access and manipulate properties including doing it directly in driver code or creating a function to use input or not to update the values of properties.
*/
