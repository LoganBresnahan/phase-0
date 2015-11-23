// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:




// Release 1:
var root = document.getElementsByTagName( 'div' )[0]; // '0' to assign the first (and only `div` tag)

root.setAttribute( 'class', 'done' );



// Release 2:
document.getElementById("release-1").style.display = "none";




// Release 3:

document.getElementById("tag").innerHTML = "I completed release 2."


// Release 4:
document.getElementById("release-3").style.color = "#955251";



// Release 5:
document.getElementById("release-3").style.textSize = "2em";

// Release 6:
var tmpl = document.getElementById ('hidden');
document.body.appendChild (tmpl.content.cloneNode (true))

/* Reflection
What did you learn about the DOM?
I learned that it will give me errors on the JavaScript. The formating
can be hard to get used to because I don't really understand JS very well.


What are some useful methods to use to manipulate the DOM?
.appendchild, .innerHTML, .getElementById these were all brand new but
they seemed to work well. I will need to do more practice with this.

*/