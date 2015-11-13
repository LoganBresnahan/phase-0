 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Become the Kami
// Goals: Collect Items from other people by winning a guessing game.
// Characters: honored_one, sunglasses guy, forest bear, magic flower fairy
// Objects: sunglasses, table, flower magic
// Functions: battle function, add life function.

// Pseudocode
//
//
//
//
//

// Initial Code
var honored_one = {
	sunglasses: false,
	table: false,
	flower_magic: false,
}

var sunglasses_guy = {
	sunglasses: true,
}

var forest_bear = {
	table: true,
}

var magic_flower_fairy = {
	flower_magic: true,
}


var energy = 10;

function death_clock(){
	energy = energy - 1;
	alert("You have " + energy + " units left on your death clock...");
	if(energy === 0){
		throw new Error(alert("You are dead."));
	}else {
		battle(current);
	}
}

function battle(enemy){
	var decision = prompt("The enemy is challenging you to a dual of evens and odds. What is he holding behind his back? 1 or 2?");
	var num = Math.floor(Math.random() * (2 - 1 + 1)) + 1;
	if(decision == num){
		for(var keys in honored_one){
			if(keys == Object.keys(enemy)){
 				honored_one[keys] = true;
 				for(var keys in enemy){
 					enemy[keys] = false;
 				}
			}
		}
	}else {
		death_clock();	
	}
}

alert("Welcome, most honored one. You have been chosen by the Overlords to have your skills tested.");
alert("You will go on a semi-dangerous mission where you will need to collect three special/awesome/magical items that will give you the power of the Kami!");
var choice = confirm("Will you go on this mission?");
if(choice == true){
	alert("Amazing! Lets get to it.");
	alert("The Overlords are now transporting you to Sunglasses City. We need to find the one they call \"Sunglasses Guy.\"");
	alert("*thinking to yourself* \"geewiz, there sure are a lot of people with sunglasses here\" \n\n ヽ(⌐■_■)ノ♪♬ \n\n （■Д■*） \n\n ⊂(▀¯▀⊂)");
	alert("There he is!!!! The angry looking man right over there! \n\n ( ▀ 益 ▀ )");
	var b_choice = confirm("Will you battle for the sunglasses?");
		if (b_choice == true){
			var current = sunglasses_guy;
			battle(sunglasses_guy);
		}else{
			throw new Error(alert("You are dead."));
		}
	alert("Great Job! You now have the sunglasses! \n\n...but Sunglesses Guy sure looks mad... \n\n ٩(╬ʘ益ʘ╬)۶");

	alert("Hold On!, the Overlords are going to transport you to the Forest of Bears where you must find the \"Great Forest Bear\"! You must battle the Great Forest Bear to win his prized table.");
	alert("*thinking to yourself* \"man, these bears all look the same...\" \n\n ʕ·ᴥ·ʔ ʕ·ᴥ·ʔ ʕ·ᴥ·ʔ ʕ·ᴥ·ʔ");
	alert("Wait, over there! The one that is slightly bigger than the others. That is the Great Forest Bear! \n\n ʕ •ᴥ•ʔ");
	var c_choice = confirm("Will you battle for the table?");
		if (c_choice == true){
			var current = forest_bear;
			battle(forest_bear);
		}else{
			throw new Error(alert("You are dead."));
		}
	alert("Amazing work! Great Forest Bear is giving you his table. \n\n ʕノ•ᴥ•ʔノ ︵ ┻━┻")

	alert("The Overlords are now going to transport you to the Flower Power Garden. You must find the \"Magic Flower Fairy\" and convince it to give you its flower magic.");
	alert("*thinking to yourself* \"there are like a lot of magic fairy things here...\" \n\n 炎炎炎炎☆┣o(･ω･ ) \n\n ᕦ( ✿ ⊙ ͜ʖ ⊙ ✿ )━炎炎炎炎炎炎炎炎 \n\n (∩｀-´)⊃━☆ﾟ.*･｡ﾟ");
	alert("Hang on a second, I think it's the one shooting flowers from its wand! \n\n (∩ᄑ_ᄑ)⊃━✿✿✿✿✿✿");
	var d_choice = confirm("Will you try to get the flower magic?");
		if (d_choice == true){
			var current = magic_flower_fairy;
			battle(magic_flower_fairy);
		}else{
			throw new Error(alert("You are dead."));
		}
	alert("Once again you win! Look at the flower fairy's sad face! \n\n (∩ᄑ_ᄑ)⊃━");
	alert("Wait, it cant be....");
	alert("Yes! That makes all three special/awesome/magical items yours! \n\n ⌐■-■ \n\n ┻━┻ \n\n ✿✿✿✿✿✿");
	alert("Congratulations! You are now the all powerful Kami...(though, slightly less powerful than the Overlords)...but the peasants bow to your glory! \n\n ＿|￣|○　 ԅ(≖‿≖ԅ)  ○|￣|＿");	
}else {
	throw new Error(alert("You are not welcome here!"));
}

console.log(honored_one);
console.log(sunglasses_guy);
console.log(forest_bear);
console.log(magic_flower_fairy);
// Refactored Code

var honored_one = {
	sunglasses: false,
	table: false,
	flower_magic: false,
}

var enemy = {
	sunglasses: true,
	table: true,
	flower_magic: true,
}

var energy = 10;

function death_clock(){
	energy = energy - 1;
	alert("You have " + energy + " units left on your death clock...");
	if(energy === 0){
		throw new Error(alert("You are dead."));
	}else {
		battle(enemy);
	}
}

function battle(enemy){
	var decision = prompt("The enemy is challenging you to a dual of evens and odds. What is he holding behind his back? 1 or 2?");
	var num = Math.floor(Math.random() * (2 - 1 + 1)) + 1;
	if(decision == num){
		for(var keys in honored_one){
			if(keys == Object.keys(enemy)){
 				honored_one[keys] = true;
 				for(var keys in enemy){
 					enemy[keys] = false;
 				}
			}
		}
	}else {
		death_clock();	
	}
}

alert("Welcome, most honored one. You have been chosen by the Overlords to have your skills tested.");
alert("You will go on a semi-dangerous mission where you will need to collect three special/awesome/magical items that will give you the power of the Kami!");
var choice = confirm("Will you go on this mission?");
if(choice == true){
	alert("Amazing! Lets get to it.");
	alert("The Overlords are now transporting you to Sunglasses City. We need to find the one they call \"Sunglasses Guy.\"");
	alert("*thinking to yourself* \"geewiz, there sure are a lot of people with sunglasses here\" \n\n ヽ(⌐■_■)ノ♪♬ \n\n （■Д■*） \n\n ⊂(▀¯▀⊂)");
	alert("There he is!!!! The angry looking man right over there! \n\n ( ▀ 益 ▀ )");
	var choice = confirm("Will you battle for the sunglasses?");
		if (choice == true){
			battle(enemy);
		}else{
			throw new Error(alert("You are dead."));
		}
	alert("Great Job! You now have the sunglasses! \n\n...but Sunglesses Guy sure looks mad... \n\n ٩(╬ʘ益ʘ╬)۶");

	alert("Hold On!, the Overlords are going to transport you to the Forest of Bears where you must find the \"Great Forest Bear\"! You must battle the Great Forest Bear to win his prized table.");
	alert("*thinking to yourself* \"man, these bears all look the same...\" \n\n ʕ·ᴥ·ʔ ʕ·ᴥ·ʔ ʕ·ᴥ·ʔ ʕ·ᴥ·ʔ");
	alert("Wait, over there! The one that is slightly bigger than the others. That is the Great Forest Bear! \n\n ʕ •ᴥ•ʔ");
	var choice = confirm("Will you battle for the table?");
		if (choice == true){
			battle(enemy);
		}else{
			throw new Error(alert("You are dead."));
		}
	alert("Amazing work! Great Forest Bear is giving you his table. \n\n ʕノ•ᴥ•ʔノ ︵ ┻━┻")

	alert("The Overlords are now going to transport you to the Flower Power Garden. You must find the \"Magic Flower Fairy\" and convince it to give you its flower magic.");
	alert("*thinking to yourself* \"there are like a lot of magic fairy things here...\" \n\n 炎炎炎炎☆┣o(･ω･ ) \n\n ᕦ( ✿ ⊙ ͜ʖ ⊙ ✿ )━炎炎炎炎炎炎炎炎 \n\n (∩｀-´)⊃━☆ﾟ.*･｡ﾟ");
	alert("Hang on a second, I think it's the one shooting flowers from its wand! \n\n (∩ᄑ_ᄑ)⊃━✿✿✿✿✿✿");
	var choice = confirm("Will you try to get the flower magic?");
		if (choice == true){
			battle(enemy);
		}else{
			throw new Error(alert("You are dead."));
		}
	alert("Once again you win! Look at the flower fairy's sad face! \n\n (∩ᄑ_ᄑ)⊃━");
	alert("Wait, it cant be....");
	alert("Yes! That makes all three special/awesome/magical items yours! \n\n ⌐■-■ \n\n ┻━┻ \n\n ✿✿✿✿✿✿");
	alert("Congratulations! You are now the all powerful Kami...(though, slightly less powerful than the Overlords)...but the peasants bow to your glory! \n\n ＿|￣|○　 ԅ(≖‿≖ԅ)  ○|￣|＿");	
}else {
	throw new Error(alert("You are not welcome here!"));
}
// Reflection
/*
-What was the most difficult part of this challenge?
	At first I really wasn't sure what I even wanted to do, I wasn't sure if my game would be complicated enough
	to satisfy the criteria. Other than that, I had a really hard time with my battle() function. I wasn't useing the
	correct syntax to target an element and change its value. I was using dot notation and then [" "] brackets with
	quotes but what I need were brackets without the quotes.

-What did you learn about creating objects and functions that interact with one another?
	It's really hard to manipulate objects in JS. When going through the game and deciding what to do, I think I came
	to the conclusion that it would be easier in my case to have arrays instead. Once I got it working, it seems to 
	do well.

-Did you learn about any new built-in methods you could use in your refactored solution? 
If so, what were they and how do they work?
	I learned a lot about the for in loop in JS. It's great for going through objects.

-How can you access and manipulate properties of objects?
	You can loop through them and target them with some kind of camparison operator.
	You can also target them directly if you know what key you want to change.

*/
