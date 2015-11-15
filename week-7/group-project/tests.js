// Add the finished solution here when you receive it.
////PERSON 1
/*
As a user, I want to create an action called sum that takes two different lists of numbers,
which have already been made, and it will add them up separately.

As a user, I want to create an action called mean that takes two different lists of numbers,
which have already been made, and it will find the mean separately.

As a user, I want to create an action called median that takes two different lists of numbers,
which have already been made, and it will find the median separately. 
*/

//PERSON 2
/*
DEFINE function 'sum' which accepts 2 parameters: 'numberList1', 'numberList2'
  CREATE array 'numSums', each element equal to 0
  ITERATE over 'numberList1'
    ADD each element to first element of 'sums'
  ITERATE over 'numberList2'
    ADD each element to second element of 'sums'
  RETURN 'sums'
DEFINE function 'mean' which accepts 2 parameters: 'numberList1', 'numberList2'
  CREATE array 'numMeans'
  CALL function 'sum' with arguments 'numberList1', 'numberList2'
    PASS result to 'numMeans'
  DIVIDE first element of 'numMeans' by half the length of 'numberList1'
    ADD result to smallest element of 'numberList1'
      PASS result to first element of 'numMeans'
  DIVIDE second element of 'numMeans' by half the length of 'numberList2'
    ADD result to smallest element of 'numberList2'
      PASS result to second element of 'numMeans'
  RETURN 'numMeans'
DEFINE function 'median' which accepts 2 parameters: 'numberList1', 'numberList2'
  CREATE array 'numMedians'
  CREATE array 'sortedList1'
  CREATE array 'sortedList2'
  SORT 'numberList1' from smallest to largest
    PASS result to 'sortedList1'
  SORT 'numberList2' from smallest to largest
    PASS result to 'sortedList2'
  IF length of 'sortedList1' is odd
    PASS middle element of 'sortedList1' to first element of 'numMedians'
  ELSE
    SUM two middle elements of 'sortedList1'
      DIVIDE result by 2
        PASS result to first element of 'numMedians'
  IF length of 'sortedList2' is odd
    PASS middle element of 'sortedList2' to first element of 'numMedians'
  ELSE
    SUM two middle elements of 'sortedList2'
      DIVIDE result by 2
        PASS result to second element of 'numMedians'
        
  RETURN 'numMedians'              
*/
/*
//PERSON 3 & 4
// DEFINE function 'sum' which accepts 2 parameters: 'numberList1', 'numberList2'
//   CREATE array 'numSums', each element equal to 0
//   ITERATE over 'numberList1'
//     ADD each element to first element of 'sums'
//   ITERATE over 'numberList2'
//     ADD each element to second element of 'sums'
//   RETURN 'sums'

// Team 3 caveat - assuming "numSums" and "sums" to be the same variable

function sum(numberList1, numberList2){
  var numSums = [0,0];
  for (var i = 0; i < numberList1.length; i++){
    numSums[0] += numberList1[i];
  }
  for (var j = 0; j < numberList2.length; j++){
    numSums[1] += numberList2[j];
  }
  return numSums;
}

// DEFINE function 'mean' which accepts 2 parameters: 'numberList1', 'numberList2'
//   CREATE array 'numMeans'
//   CALL function 'sum' with arguments 'numberList1', 'numberList2'
//     PASS result to 'numMeans'
//   DIVIDE first element of 'numMeans' by half the length of 'numberList1'
//     ADD result to smallest element of 'numberList1'
//       PASS result to first element of 'numMeans'
//   DIVIDE second element of 'numMeans' by half the length of 'numberList2'
//     ADD result to smallest element of 'numberList2'
//       PASS result to second element of 'numMeans'
//   RETURN 'numMeans'

// Team 3 Caveat - this is not our understanding of what the Mean is; we though it was just the total of the items in a set of numbers, divided by the total number of items in the set

function mean(numberList1, numberList2){
  var numMeans = [];
  numMeans = sum(numberList1, numberList2);
  numMeans[0] = numMeans[0]/(numberList1.length/2) + Math.min.apply(null, numberList1);
  numMeans[1] = numMeans[1]/(numberList2.length/2) + Math.min.apply(null, numberList2);
  return numMeans;
}


// DEFINE function 'median' which accepts 2 parameters: 'numberList1', 'numberList2'
//   CREATE array 'numMedians'
//   CREATE array 'sortedList1'
//   CREATE array 'sortedList2'
//   SORT 'numberList1' from smallest to largest
//     PASS result to 'sortedList1'
//   SORT 'numberList2' from smallest to largest
//     PASS result to 'sortedList2'
//   IF length of 'sortedList1' is odd
//     PASS middle element of 'sortedList1' to first element of 'numMedians'
//   ELSE
//     SUM two middle elements of 'sortedList1'
//       DIVIDE result by 2
//         PASS result to first element of 'numMedians'
//   IF length of 'sortedList2' is odd
//     PASS middle element of 'sortedList2' to first element of 'numMedians'
//   ELSE
//     SUM two middle elements of 'sortedList2'
//       DIVIDE result by 2
//         PASS result to second element of 'numMedians'

//   RETURN 'numMedians'

//Caveat from Team 3 - in line 63 of P-code, assuming "first element of numMedians" actually means "second element of numMedians"

function median(numberList1, numberList2){
  var numMedians = [];
  var sortedList1 = [];
  var sortedList2 = [];
  sortedList1 = numberList1.sort(function(a, b){return a-b});
  sortedList2 = numberList2.sort(function(a, b){return a-b});
  if (sortedList1.length % 2 != 0) {
    numMedians[0] = sortedList1[Math.floor(sortedList1.length/2)];
  }
  else {
    numMedians[0] = (sortedList1[sortedList1.length / 2] + sortedList1[(sortedList1.length / 2) + 1]) / 2;
  }
  if (sortedList2.length % 2 != 0) {
    numMedians[1] = sortedList2[Math.floor(sortedList2.length/2)];
  }
  else {
    numMedians[1] = (sortedList2[sortedList2.length / 2] + sortedList1[(sortedList2.length / 2) + 1]) / 2;
  }
  return numMedians;

}



// DRIVER CODE

// sum
var arrayOne = [1, 1, 1, 1, 1, 1];
var arrayTwo = [2, 4, 6, 8, 10];

//console.log(sum(arrayOne,arrayTwo));



// mean
//console.log(mean(arrayOne,arrayTwo));

// median


console.log(median(arrayOne,arrayTwo));
*/
//PERSON 5

/*
User Story 1:
As a user I want to find the sum of two lists of numbers and have the answer returned as a new list named numSums.
*/
function sum(numberList1, numberList2){
  var numSums = [0,0];
  for (var i = 0; i < numberList1.length; i++){
    numSums[0] += numberList1[i];
  }
  for (var j = 0; j < numberList2.length; j++){
    numSums[1] += numberList2[j];
  }
  return numSums;
}

/*
User Story 2:
As a user I want to find a number that represents for a list of numbers: the sum of the numbers, divided by half the length of the list, plus the smallest value in the list. I want to do this for two lists of numbers and have the answer returned as a new list named numMeans.
*/
function mean(numberList1, numberList2){
  var numMeans = [];
  numMeans = sum(numberList1, numberList2);
  numMeans[0] = numMeans[0]/(numberList1.length/2) + Math.min.apply(null, numberList1);
  numMeans[1] = numMeans[1]/(numberList2.length/2) + Math.min.apply(null, numberList2);
  return numMeans;
}

/*
User Story 3:
As a user I want to find the median for a list of numbers. I want to do this for two lists of numbers at once and have the answer returned as a new list named numMedians.
*/
function median(numberList1, numberList2){
  var numMedians = [];
  var sortedList1 = [];
  var sortedList2 = [];
  sortedList1 = numberList1.sort(function(a, b){return a-b});
  sortedList2 = numberList2.sort(function(a, b){return a-b});

  if (sortedList1.length % 2 != 0) {
    numMedians[0] = sortedList1[Math.floor(sortedList1.length/2)];
  }
  else {
    numMedians[0] = (sortedList1[sortedList1.length / 2] + sortedList1[(sortedList1.length / 2) + 1]) / 2;
  }
  if (sortedList2.length % 2 != 0) {
    numMedians[1] = sortedList2[Math.floor(sortedList2.length/2)];
  }
  else {
    numMedians[1] = (sortedList2[sortedList2.length / 2] + sortedList1[(sortedList2.length / 2) + 1]) / 2;
  }
  return numMedians;

}



// DRIVER CODE

// sum
// var arrayOne = [1, 1, 1, 1, 1, 1];
// var arrayTwo = [2, 6, 4, 8, 10];

// console.log(sum(arrayOne,arrayTwo));



// // mean
// console.log(mean(arrayOne,arrayTwo));

// // median


// console.log(median(arrayOne,arrayTwo));
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)