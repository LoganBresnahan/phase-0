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