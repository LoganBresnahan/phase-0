// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
	var hello = "hello"
	console.log(hello + " world!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
	var pound = ""
	
	for (i = 0; i <= 6; i++){
		pound = pound += "#";
		console.log(pound);
	}

// Functions

// Complete the `minimum` exercise.
	 function smallest(a, b){
	 	console.log(Math.min(a, b));
	 }
	 smallest(7, 14);


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
	var me = {
		name: "Logan",
		age: 26,
		favorite_foods: ["pizza", "taro", "humans"],
		quirk: "Eating humans",
	}
	console.log(me.quirk);






/*Text Questions
Introduction
-Did you learn anything new about JavaScript or programming in general?
 	Yes, I don't really know much about it at all. He says that it is very
 	liberal which scares me. I love throwing code at the interpreter to see if 
 	it works, but I imagine I will need to be more careful with JavaScript.

-Are there any concepts you feel uncomfortable with?
 	As of now no, I'm sure I will when I start to really use it. I'm looking forward
 	to using JS as I imagine it will force me to be a little more logical and careful with
 	my code vs using Ruby.

Ch.1
-Identify two similarities and two differences between JavaScript and Ruby syntax with regard to 
    numbers, arithmetic, strings, booleans, and various operators.
	For numbers is seems that both languages can use operators to perform arthmitic. Both languages
 	can manipulate either whole numbers or decimals. Ruby though, has two different classes for numbers,
 	and Integer class and Float class. JS just has a Number class for both.

	Whith strings, Both languages allow you to wrap them in "" or ''. Both use the \ to esacape
	characters. In Ruby you can perform string interpolation but with JS you only have the +.

	It looks like JS has some operators that are of written word rather than symbol, such as, typeof.
	I don't believe Ruby has this.

	Both use the booleans true and false but JS does have NaN (not a number) while Ruby would probably
	return an error instead.
	Both have the ternanry operator and use the || && ! logical operators.

	With undefined values Ruby will return nil but JS will return null or undefined.
	JS also has type coercion which will change certain values types. Ruby does not do this automatically.
	In Ruby the only false objects are nil and false but in JS 0, NaN, and ("") count as false in type coercion.
	With JS and using the == you can fall into type coercion traps so the alternative is to use ===. In Ruby,
	you only want to use the === if you need to find out if the two objects evaluate to the same object_id.

Ch.2
-What is an expression?
	A fragment of code that produces a value is called an expression. Every value that is written
	literally is an expression.

-What is the purpose of semicolons in JavaScript? Are they always required?
	They are not always required but it depends on the situation. The semicolon tell JS when a 
	statement is over so it won't include what is written below it.

-What causes a variable to return undefined?
	When you define a variable without giving it a value it will return undefined.

-Write your own variable and do something to it in the eloquent.js file.
	var hello = "hello"
	hello + " world!"

-What does console.log do and when would you use it? What Ruby method(s) is this similar to?
	console.log() will output what you put inside it's parenthesis to the screen. You can also do
	programming inside the console.log(1 + 1) => 2. This is similiar to Ruby's puts, print, and p. 

-Write a short program that asks for a user to input their favorite food. After they hit return, 
 have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the 
 Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). 
 Paste your program into the eloquent.js file.
	prompt("What is your favorite food?")
	confirm("Hey! That's my favorite too!")

-Describe while and for loops
	A while loop takes a parameter and while that parameter is true it will continue the loop and 
	do whatever calculation you told it to. while (parameter == true){do somthing;}
	The for loop is like a shortcut for the while loop. It takes a variable, a condition for the 
	variable, and a manipulation for the variable. It must have two semicolons in its paranthesis.
	for (car number = 0; number <= 12; number = number + 2){console.log(number);}

-What other similarities or differences between Ruby and JavaScript did you notice in this section?
	Both have the break keyword to get out of loops. They also have loops and case statements. The 
	syntax isn't even close to being the same. It looks like JS doesn't have amazing each iteration like
	Ruby. The comments are different too.

-Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.
	See code

Ch.3
-What are the differences between local and global variables in JavaScript?
	Global variables are written outside of the function. Global variables can then be accessed
	by any function. Local variables are written inside a function which can only be accessed in
	that function or in function nested inside the original function. Functions are the only thing
	in JS that make a new scope.

-When should you use functions?
	When you need to create a block of code that has a purpose of function.

-What is a function declaration?
	It is the short way to declare a function. ( var square = function() ) can become
	( function square() ). This also allows function declaration to escape the normal flow of the 
	program. 

-Complete the minimum exercise in the eloquent.js file.
	See Code

Ch.4
-What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
	Using .max will fetch the property of value named "max", [max] evaluetes the expression "max" and uses the result
	as the property name. If you know the property you can use the "." if you are looing to find out the property 
	you can use the "[]".

-Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.
	see code

-What is a JavaScript object with a name and value property similar to in Ruby?
	At first glance it always looks like a hash in Ruby. Though, accessing items with the "." reminds me of a
	reader method defined in a class.

*/

