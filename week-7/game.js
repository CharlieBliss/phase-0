// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Ben is really tired from a long day of customer service, get him to bed so he can dream about having a better life! Watch out for stress dreams!
// Goals:Get Ben to Bed, dream successfully, try to forget about tiresome life as a faceless employee
// Characters:Ben, Mr. Braxton, Spaceman Ben, Cowboy Ben
// Objects: Ben(position,sleepstatus,sleepiness,confidence,workdaystress), Ben's Bed, Ben's Invasive Thoughts, Ben's Space Dream, Ben's Cowboy Dream, Ben's Stress Dream, Ben's Romance Dream, Ben's Embarassing Romance Nightmare
// Functions:Ben(MoveRight,Moveup,MoveDown,MoveLeft,brushTeeth,skipBrushingTeeth,getInBed)

// Pseudocode
//
//
//
//
//

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
move()
console.log(ben.position)
goToSleep()








// Reflection
//
//
//
//
//
//
//
//
