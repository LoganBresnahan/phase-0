//Pseudocode
/* 
DEF an object that will hold a grocery list.
DEF a function that will take an argument and add an item to the list.
DEF a function that will remove an item from the list.
DEF a function that can update the item quantity in the list.
Print the list to look nice.
*/

//Initial Solution

var groceryList = {}

function addToList(item, quantity){
	if(isInteger(quantity)){
		groceryList[item] = quantity;
	}else{console.log("\"" + quantity + "\" <-- Quantity must be a number.")}	
}

function rmFromList(item){
	delete groceryList[item];
}

function printList(){
	for(key in groceryList){
		var counter = key;
		console.log(counter + " " + groceryList[key]);
	}
}

function isInteger(i){
	return i % 1 == 0;
}

//Driver Code
addToList("eggs", 1);
addToList("bacon", 5);
addToList("bacon", "ha");
rmFromList("eggs");
addToList("eggs", 2);
printList();

//Refactor

function GroceryList(name){
	name = {};
	this.print = function(){
		for(key in name){
			var counter = key;
			console.log(counter + " " + name[key]);
		};
	};
	this.add = function(item, amount){
		if(isInteger(amount)){
			name[item] = amount;
		}else{console.log("\"" + amount + "\" <-- Amount must be a number.")}
	};
	this.remove = function(item){
		delete name[item];
	};

	function isInteger(i){
		return i % 1 ==0;
	};
};

//Driver Code
var myList = new GroceryList("Logan");
myList.add("ham", "lots");
myList.add("eggs", 2);
myList.remove("eggs");
myList.add("bacon", 7);
myList.add("eggs", 3);
myList.print();

//Reflection
/*
-What concepts did you solidify in working on this challenge? 
(reviewing the passing of information, objects, constructors, etc.)
	Making function and manipulating keys in objects. Also, how to test
	if a variable is an Integer. I had to look that one up. 

-What was the most difficult part of this challenge?
	Testing to see if the input was an Integer. I thought there was
	a built in function and I did find Number.isInteger() but I don't
	think that it is a part of standard JavaScript.

-Did an array or object make more sense to use and why
	An object because I needed to have an item in test and then
	a quantity associated with it as an integer.

*/