// JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.



// Bulk Up
var array = [
  ["Sarah Hughes", "Ladies\' Singles"],
  ["Michael Phelps", "Freestyle"],
];
var win = function(test){
  for(var counter = 0; counter <= array.length - 1; counter ++){
    console.log(test[counter][0] + " just won " + test[counter][1]);
  }
}

win(array);



// Jumble your words
var jumble = function(string){
  console.log(string.split(['']).reverse().join(['']));
}
jumble("hello");


// 2,4,6,8
var evens = function(numbers){
  for(var numcounter = 0; numcounter <= numbers.length - 1; numcounter ++){
    
    if (numbers[numcounter] % 2 === 0){
    console.log(numbers[numcounter]);
      }
  }
}

evens([1, 2]);


// "We built this city"
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.sport = sport;
  this.quote = quote;
}


// Reflection
/*
-What JavaScript knowledge did you solidify in this challenge?
	All of the syntax information. Also, how to use for loop the correct way.
	We also learned about type coercion. Constructor functions were brand new
	as well. 

-What are constructor functions?
	Constructor functions are a lot like classes in Ruby where you define
	a method to read and write. They take arguments and you can set the 
	arguments to a method, but I don't think they can do att. 

-How are constructors different from Ruby classes (in your research)?
	You can define function in them just like methods in Ruby. The this. seems
	a lot like self. in Ruby. I don't believe that JS has instance variables. They don't
	have class variables either. I'm not sure if you can mix in a module.

*/


  
  

    
    
  
