# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.
=begin
# Pseudocode

# Input: The new instance of class GuessingGame will take one integer as
an argument and the method guess will take one integer as an argument.
# Output: The game will output one of three answers in symbol form, low,
high, and correct.
# Steps:
1.Need to set argument answer to an instance variable.
2.Need to set argument input to an instance variable.
3.Need a comparison between input and answer to output either low, high,
or correct.
4.Need method solved? to return true or false depending on whether input
is equal to answer.
5.Need to run the game by instantiating a new instance of GuessingGame
and running the guess and solved? methods interchangeably.

=end

# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer# Your initialization code goes here
  end

  def guess(input)
  	@input = input
  	if @input > @answer
  		return :high
  	elsif @input < @answer
  		return :low
  	else @input == @answer
  		return :correct
  	end
  end

  def solved?
  	if @input == @answer
  		true
  	else 
  		false
  	end
  end


  # Make sure you define the other required methods, too
end

game = GuessingGame.new(36)
p game.solved?
p game.guess(35)
p game.solved?
p game.guess(36)
p game.solved?




# Refactored Solution
=begin
class GuessingGame
  def initialize(answer)
  	p "Guess the number!"
    @answer = answer
  end

  def guess
  	@input = gets.chomp.to_i 
  	p :high if @input > @answer
  	p :low if @input < @answer
  	p :correct if @input == @answer
  end

  def solved?
  	@input == @answer ? true : false
  end
end

game = GuessingGame.new(36)
until game.solved?
	game.guess
end

=end





# Reflection
=begin
-How do instance variables and methods represent the characteristics 
and behaviors (actions) of a real-world object?
  The variables are names of real world objects and the methods are
  like the combination of those things that produce an action of some kind.

-When should you use instance variables? What do they do for you?
  You need them when you are trying to share variables between different
  methods. They allow us to dynamically manipulate variables with different
  sets of instructions (other methods).

-Explain how to use flow control. Did you have any trouble using it in 
this challenge? If so, what did you struggle with?
  Flow control is like sending an object through a set of steps. Once
  a specific step fulfills this objects purpose the flow is complete
  and some kind of return happens. When refactoring I struggled with 
  getting the syntax correct for the if statement. I played around with
  it till I used the least amount of lines for a specific flow control set.

-Why do you think this code requires you to return symbols? What are 
the benefits of using symbols?
  I know symbols take up less memory and there can only be one symbol of
  a certain name in Ruby at a time. Every object in Ruby has a symbol equated to it
  for memory purposes so by using a symbol in the first place we save memory.


=end