/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.
var gradebook = {};

var students = ["Joseph", "Susan", "William", "Elizabeth"];

var scores = [ [80, 70, 70, 100], // Joseph's scores
               [85, 80, 90, 90], // Susan's scores
               [75, 70, 80, 75], // William's scores
               [100, 90, 95, 85] ]; // Elizabeth's scores

gradebook.Joseph = {};
gradebook.Susan = {};
gradebook.William = {};
gradebook.Elizabeth = {};



gradebook.Joseph.testScores = scores[0];
gradebook.Susan.testScores = scores[1];
gradebook.William.testScores = scores[2];
gradebook.Elizabeth.testScores = scores[3];

for (var indx in students) {
  gradebook[students[indx]] = {};
  gradebook[students[indx]].testScores = scores[indx];
};

gradebook.addScore = function(name, score) {
  gradebook[name].testScores.push(score);
};

gradebook.getAverage = function(name){
  return average(gradebook[name].testScores);
};

var average = function(numbers){
  var sum = 0;
  for(var i = 0;i<numbers.length;i++){
    sum += numbers[i];
  }
  return sum/numbers.length;
};







// __________________________________________
// Refactored Solution
var gradebook = {};


for (var indx in students) {
  gradebook[students[indx]] = {};
  gradebook[students[indx]].testScores = scores[indx];
};

gradebook.addScore = function(name, score) {
  gradebook[name].testScores.push(score);
};


gradebook.getAverage = function(name){
  return average(gradebook[name].testScores);
};

var average = function(numbers){
  var sum = 0;
  for(var i = 0;i<numbers.length;i++){
    sum += numbers[i];
  }
  return sum/numbers.length;
};







// __________________________________________
// Reflect
/*
-What did you learn about adding functions to objects?
  It was a lot easier than I thought it would be. You simply write
  a function and set it as a property to the object just like
  anything else.

-How did you iterate over nested arrays in JavaScript?
  We used the for loop. Our refactored code used the for in loop.
  It did a great job with allowing us an index and then targeting
  each item in the array.

-Were there any new methods you were able to incorporate? 
If so, what were they and how did they work?
  We learned more about the [] vs the . when setting a property to 
  the object. As far as methods go we used push(), which isn't new
  because of our Ruby studies but we hadn't used it in JS before.
  It works pretty much the same.

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
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)