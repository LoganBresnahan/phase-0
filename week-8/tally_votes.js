// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

//1. SET Bob to property of president
//   2.    SET value to 3
//3. SET Bob to property of vicePresident
//   4.    SET value to 3
//5. SET Bob to property of secretary
//   6.    SET value to 3
//7. SET Bob to property of treasurer
//   8.    SET value to 3
//9. SET President value to Louise
//  10. SET vicePresident value to Hermann
//11. SET secratary value to Fred
//  12. SET treasurer value to Ivy

// __________________________________________
//Initial Solution
// for(people in votes){
//   for(key in voteCount){
//     voteCount[key][people] = 0;
//   }
// }


// for(people in votes){
//   for(office in votes[people]){
//     voteCount[office][votes[people][office]] ++;
//   }
// }


// for(spot in voteCount){
//   var largest = 0;
//   for(num in voteCount[spot]){
//     if(voteCount[spot][num] >= largest){
//       largest = voteCount[spot][num];
//       officers[spot] = num
//     }
//   }
// }

// console.log(officers);
// __________________________________________
// Refactored Solution
for(people in votes){
  for(key in voteCount){
    voteCount[key][people] = 0;
  }
}


for(people in votes){
  for(office in votes[people]){
    voteCount[office][votes[people][office]] ++;
  }
}


for(spot in voteCount){
  var largest = 0;
  for(num in voteCount[spot]){
    if(voteCount[spot][num] >= largest){
      largest = voteCount[spot][num];
      officers[spot] = num
    }
  }
}

console.log(officers);
// __________________________________________
// Reflection
/*
-What did you learn about iterating over nested objects in JavaScript?
  We learned all about the for in loop and how it goes through each key in
  the object. Most importantly, we learned that the name needs to be different
  for the key when you're nesting multiple for in's. 

-Were you able to find useful methods to help you with this?
  Object.defineProperty() might work really well but I'm not sure if it can reach 
  nested data. 

-What concepts were solidified in the process of working through this challenge?
  All about objects. I hated everything about them until this challenge shored up
  some concepts. Though, this challenge was probably the hardest for me yet. 
  JavaScript is not intuitive for me.

*/
//___________________________________________
//NOTES
/*
for(key in voteCount){
  if(key is greatest give to officers)
  Object.defineProperty(voteCount, key, {value: Object.keys(votes)});
};


Object.getOwnPropertyNames(voteCount).forEach(function(val, idx, array) {
  console.log(val + ' -> ' + voteCount[val]);
});

for(key in votes){
Object.getOwnPropertyNames(votes).forEach(function(val, idx, array) {
  console.log(val + ' -> ' + votes[val]);
});
}

Object.keys(votes)
*/
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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)