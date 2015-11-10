// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with:

// Pseudocode
/*
step1: create METHOD and take in int argument
step2: covert int to string and reverse
step3: LOOP through string by the length of string minus 3
       concatenate comma every 3rd value to variable
step4: reverse the string and return string
*/
Initial Solution
function separate_comma(number) {
  number = number.toString(); 
  var array = [];
  
  for(var i = 0; i < number.length; i++) {
    array[i] = number[number.length - i - 1];
  }
  
  for(var i = 0; i < array.length; i++) {
    if((i % 3 === 0) && (i != 0)){
        array[i] = array[i] + ",";
    }  
  }
  
  number = ""
  for(var i = array.length - 1; i >= 0; i--) {
    number = number + array[i];
        
    console.log(number);
  }
}

// Refactored Solution
function separate_comma(number) {
  number = number.toString();
  var array = [];
  
  for(var i = 0; i < number.length; i++) {
    array[i] = number[number.length - i - 1];
  }
  
  for(var i = 0; i < array.length; i++) {
    if((i % 3 === 0) && (i != 0)){
        array[i] = array[i] + ",";
    }  
  }
  number = array.reverse().join('').toString();
        
  console.log(number);
}

var test = 12345678;

separate_comma(test);

// Your Own Tests (OPTIONAL)




// Reflection
/*
-What was it like to approach the problem from the perspective of JavaScript? 
Did you approach the problem differently?
	I thought the approach would be the same. It was for our psuedocode at least.
	My partner had a much better understanding of JS than I did so I was a bit
	confused most of the time. When I wasn't able to easily turn something into
	an array or a string and back again I was frustrated. JS seems so busy it confuses me.

-What did you learn about iterating over arrays in JavaScript?
	It is really complicated? I think you always need somekind of counter to go through
	an array. We did it with for loops which were hard to follow.

-What was different about solving this problem in JavaScript?
	Overall, it looks very different. The logic is the same but it will take time for
	me to feel comfortable with it.

-What built-in methods did you find to incorporate in your refactored solution?
	reverse, join, and toString were all helpful. I imagine we might be able to do more
	but even the JS docs confuse me.
*/

