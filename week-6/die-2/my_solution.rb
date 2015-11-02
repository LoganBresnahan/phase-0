# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

=begin
# Pseudocode
# Input: Takes a list of labels as an argument.
# Output: Outputs the number of labels in the list and a random
item from the list.
# Steps:
1. Inside the initialization set the labels argument to an
istance variable.
2. Inside the sides method return the length of the labels argument.
2. Inside the roll method return a random element from the labels
argument.

=end

# Initial Solution

class Die
  def initialize(labels)
  	while labels == []
  		raise ArgumentError.new("You must include elements in the list")
  	end
  	@labels = labels
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels.sample(1)[0]#.map {|x| return x}
  	#@labels.shuffle.pop
  end
end

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
p die.sides
p die.roll



# Refactored Solution

class Die
  def initialize(labels)
  	while labels.empty?
  		raise ArgumentError.new("You must include elements in the list")
  	end
  	@labels = labels
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels.shuffle.pop
  end
end

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
p die.sides
p die.roll






# Reflection
=begin

-What were the main differences between this die class and the last one 
you created in terms of implementation? Did you need to change much 
logic to get this to work?

	=>The logic was mainly the same just a different form of argument to
	manipulate. It's great that the class def are the same, all we have
	to do is change it so it can accept arrays.

-What does this exercise teach you about making code that is easily 
changeable or modifiable? 

	=>This is a good example to show why class structures can be so 
	beneficial. The class was built for rolling a die so there is 
	minimal effort in changing the def to accept a different argument
	form.


-What new methods did you learn when working on this challenge, if any?

	=>I learned more about shuffle and sample and their return values.

-What concepts about classes were you able to solidify in this challenge?

	=>I always find the idea of initializing difficult so the more practice the
	better!

=end