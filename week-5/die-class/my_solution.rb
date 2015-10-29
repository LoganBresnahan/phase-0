# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode
=begin
# Input:The input should take an argument of one number that will represent
the total number of sides our die will have.
# Output: It will need to output the total number of sides the dice has
represented by one number which is the highest on the die. Secondly, we need
to output a random number between 1 and the highest number of the die.
# Steps:1. We need to set and instance variable to the argument.
2. We need to write an ArgumentError that will output a message if an
illegal argument was given.
3. We need to return the argument integer
4. We need to randomize the output of 1 to the argument integer.
=end

# 1. Initial Solution

class Die
  def initialize(sides)
  	unless sides >= 1
  		raise ArgumentError.new("Only numbers greater than '1' are allowed.")
  	end
     @sides = sides# code goes here
  end

  def sides
    p @sides# code goes here
  end

  def roll
    p rand(1..@sides)# code goes here
  end
end

die = Die.new(6)
die.sides
die.roll


# 3. Refactored Solution







# 4. Reflection
=begin
#What is an ArgumentError and why would you use one?
	You use it to notify users of your class. Basically, you give the user
	and error if you didn't like the argument they gave to the method.

#What new Ruby methods did you implement? What challenges and successes 
id you have in implementing them?
	The rand() method was new and a little challenging. In the end I was
	making it more complicated than it needed to be (my usual vice).

#What is a Ruby class?
	A class is an object that has method definitions as apart of itself.
	Meaning, it's like the owner of certain methods. Other built in classes
	are String and Array.

#Why would you use a Ruby class?
	You would use it to create you're own set of methods that you want unique
	to a class. For example, a Tic-Tac-Toe class!

#What is the difference between a local variable and an instance 
variable?
	A instance variable can be shared to the different methods in a class
	without being forgotten. A variable will not survive outside of a
	method. Instance vairables also start with a @.

#Where can an instance variable be used?
	In any method within the class and the instances of the class.

=end