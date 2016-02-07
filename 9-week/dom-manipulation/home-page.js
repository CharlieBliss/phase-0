// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:

document.getElementById("release-0").className = "done";

// Release 1:


document.getElementById("release-1").style.display = "none";

// Release 2:


document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2!";

// Release 3:


document.getElementById("release-1").style.display = "none";

// Release 4:

document.getElementById("release-1").style.background = "#955251";


// Release 5:

var x = document.getElementsByClassName("release-4");
for (var i = 0; i< x.length;i++){
  x[i].style.fontSize="2em";
}

// Release 6:

var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true))

// What did you learn about the DOM?
// I learned that Javascript(or other languages, but usually JS)can be used to update values like CSS and html if certain conditions are met, or just when the page is loaded.
// What are some useful methods to use to manipulate the DOM?
// the getELementsby methods are all very helpful for selecting and updating the values of HTML elements. You can also use most CSS properties, or variations therof, as properties to change.

