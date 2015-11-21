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
// for (var key in votes){
//   voteCount["president"][votes[key]["president"]] = 0;
//   voteCount["vicePresident"][votes[key]["vicePresident"]] = 0;
//   voteCount["secretary"][votes[key]["secretary"]] = 0;
//   voteCount["treasurer"][votes[key]["treasurer"]] = 0;
//   };

// for (var key in votes){
//   voteCount["president"][votes[key]["president"]] ++;
//   voteCount["vicePresident"][votes[key]["vicePresident"]] ++;
//   voteCount["secretary"][votes[key]["secretary"]] ++;
//   voteCount["treasurer"][votes[key]["treasurer"]] ++;
//   };

// for (var key in voteCount["president"]){
//   if (voteCount["president"][key] >= 10){
//     officers["president"] = key;
//   };
// };

// for (var key in voteCount["vicePresident"]){
//   if (voteCount["vicePresident"][key] >= 10){
//     officers["vicePresident"] = key;
//   };
// };

// for (var key in voteCount["secretary"]){
//   if (voteCount["secretary"][key] >= 10){
//     officers["secretary"] = key;
//   };
// };

// for (var key in voteCount["treasurer"]){
//   if (voteCount["treasurer"][key] >= 10){
//     officers["treasurer"] = key;
//   };
// };

// console.log(officers);






// __________________________________________
// Refactored Solution
// for(key in voteCount){
  //if(key is greatest give to officers)
//   Object.defineProperty(voteCount, key, {
//     value: Object.keys(votes)
//     });
// };
// console.log(voteCount);

// Object.getOwnPropertyNames(voteCount).forEach(function(val, idx, array) {
//   console.log(val + ' -> ' + voteCount[val]);
// });

// for(key in votes){
Object.getOwnPropertyNames(votes).forEach(function(val, idx, array) {
  console.log(val + ' -> ' + votes[val]);
});
// }

//Object.keys(votes)

// __________________________________________
// Reflection






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