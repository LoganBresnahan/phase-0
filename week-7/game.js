 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Become the Kami
// Goals: Collect Items from other people by winning a guessing game.
// Characters: Shingi, sunglasses guy, forest bear, magic flower fairy
// Objects: sunglasses, table, flower magic
// Functions: battle function, add item function.

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

function life_points(){
	energy = energy - 1;
	alert("You have " + energy + " life points left.");
	if(energy === 0){
		alert("You are dead.");
		return;
	}
}

function battle(argument, enemy){
	var num = 1//Math.floor(Math.random() * (2 - 1 + 1)) + 1;
	if(argument == num){
		for(var keys in honored_one){
			if(keys == Object.keys(enemy)){
 				honored_one[keys] = true;
 				for(var keys in enemy){
 					enemy[keys] = false;
 				}
			}
		}
	}else {
		life_points();
	}
}

alert("Welcome, most honored one. You have been chosed by the Overlords to have your skills tested to see if you have what it takes to be the next Kami!");
alert("You will go on a semi-dangerous mission where you will need to collect three special/magical/awesome items that will give you the power of the Kami!");
var choice = confirm("Will you go on this mission?");
if(choice == true){
	alert("Amazing! Lets get to it.");
	alert("The Overlords are now transporting you to Sunglasses City. We need to find the one they call \"Sunglasses Guy.\"");
	alert("*thinking to yourself* \"geewiz, there sure are a lot of people with sunglasses here\" \n\n ヽ(⌐■_■)ノ♪♬ \n\n （■Д■*） \n\n ⊂(▀¯▀⊂)");
	alert("There he is!!!! The angry looking man right over there! \n\n ( ▀ 益 ▀ )");
	var b_choice = confirm("Will you battle for the sunglasses?");
		if (b_choice == true){
			var decision = prompt("Sunglasses man is challenging you to a dual of evens and odds. What is he holding behind his back? 1 or 2?");
			battle(decision, sunglasses_guy); //This is my battle function below.
			// return;
		}else{
			alert("You're dead.");
		}

	alert("Great Job! You now have the sunglasses!");


}else {
	alert("You are not welcome here!");
}
// Refactored Code






// Reflection
//
//
//
//
//
//
//
//
/*
console.log("ʢ• ͡•ʢ• ͡•ʢ• ͡•ʡ");
console.log("ლ,ᔑ•ﺪ͟͠•ᔐ.ლ");

٩(╬ʘ益ʘ╬)۶


( ▀ 益 ▀ )

＿|￣|○))　((○|￣|＿

ʕノ•ᴥ•ʔノ ︵ ┻━┻

ʕ·ᴥ·ʔ ʕ·ᴥ·ʔ ʕ·ᴥ·ʔ ʕ·ᴥ·ʔ

(⊃｡́‿̀｡)⊃━✿✿✿✿✿✿

(∩ ͡ ͜ʖ ͡)⊃━✿✿✿✿✿✿

⎦ʘ_ゝʘ⎣

(♥ ω ♥ )

ԅ(≖‿≖ԅ)
*/
