=begin
Create a method that takes a list of names as an argument. The names should
be in an array.
In the method seperate the names into groups of 4 or 5. 
Make sure there are at least 3 people in a group.
=end
=begin
def group_maker(array)
	one_array = Array.new
	two_array = Array.new
	three_array = Array.new
	four_array = Array.new
	five_array = Array.new
	six_array = Array.new
	seven_array = Array.new
	eight_array = Array.new
	nine_array = Array.new
	ten_array = Array.new
	eleven_array = Array.new
	twelve_array = Array.new
	array.each do |person|
		if one_array.length < 5
			one_array << person
		elsif two_array.length < 5
			two_array << person
		elsif three_array.length < 5
			three_array << person
		elsif four_array.length < 5
			four_array << person
		elsif five_array.length < 5
			five_array << person
		elsif six_array.length < 5
			six_array << person
		elsif seven_array.length < 5
			seven_array << person
		elsif eight_array.length < 5
			eight_array << person
		elsif nine_array.length < 5
			nine_array << person
		elsif ten_array.length < 5
			ten_array << person
		elsif eleven_array.length < 5
			eleven_array << person
		else twelve_array.length < 5
			twelve_array << person
		end
	end
	p one_array
	p two_array
	p three_array
	p four_array
	p five_array
	p six_array
	p seven_array
	p eight_array
	p nine_array
	p ten_array
	p eleven_array
	p twelve_array
end
=end

#Refactored 
def group_maker(array)
	array.shuffle.each_slice(5).to_a.cycle(1) {|x| p x.take(5)}
end


 group_maker(["Syema Ailia", "Alan Alcesto", "Daniel Anderson", "James Artz",
	"Darius Atmar", "Brian Bensch", "Nicola Beuscher", "Kris Bies", "Logan Bresnahan",
	"William Brinkert", "Scott Chou", "Bernice Anne W Chua", "Abraham Clark", "Jon Clayton", "Kevin Corso", "Jacob Crofts",
	"Amaar Faziani", "Soloman Fernandez", "Edward Gemson", "Jamar Gibbs", "Chris Gnomes",
	"Will Granger", "Christopher M. Gaurd", "Ryan Ho", "Igor Kazimirov",
	"Walter Kerr", "Karla King", "Becky Lehmann", "Malia Lehrer", "Carolina Medellin",
	"Timothy Meixell", "Chris Miklius", "Joshua Monzon", "Shea Munion",
	"Bryan Munroe", "Trevor Newcomb", "Aleksandra Nowak", "Fatma Ocal",
	"Van Phan", "Luis Fernando Plaz", "Natalie Polen", "Alicia Quezada", 
	"Jessie Richardson", "Nimi Samocha", "Zach Schatz", "Tal Schwartz", 
	"Pratik Shah", "Josh Shin", "Shawn Spears", "Sasha tailor", "Nil Thacker", 
	"Natasha Thapliyal", "Sabrina Unrein", "Brian Wagner", "Clinton Weber", 
	"Gregory Wehmeier", "Michael Whelpley", "Alexander Williams", "Peter N Wood", 
	"Ryan Zell"])

=begin
-What was the most interesting and most difficult part of this challenge?
The most interesting is deciding how to make a new array to store
the names in. It's also difficult to imagine a way to in which ruby can
automatically create and name another array.

-Do you feel you are improving in your ability to write pseudocode and 
break the problem down?
Not really, This is done before my GPS where they make us write correct
pseudocode. I imagine wants I recieve a lesson on it I will get better.

-Was your approach for automating this task a good solution? What could 
have made it even better?
My initial soultion is a lot of typing and repeating which is not good.
I think I need to learn more on iteration and logic concepts to get
better.

-What data structure did you decide to store the accountability groups 
in and why?
An array because I though it would be easier to change than a hash.

-What did you learn in the process of refactoring your initial solution? 
Did you learn any new Ruby methods?
The each_slice method seemed to be the key in easily seperating by a
determined value. I did my blog post on cycle so it seemed like a good way
to output the information to the screen.

=end

