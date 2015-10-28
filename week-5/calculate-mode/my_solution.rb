=begin
# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
an array

# What is the output? (i.e. What should the code return?)
An array of most frequently used objects in the initial array. No duplicate values.

# What are the steps needed to solve the problem?

What are the steps needed to solve the problem?

identify a method that would sort the array

identify the number of times each object in the array is used, and select only those which are used the most often.

refine the array such that each "mode" item is used only once.

return the new/modified array
=end
# 1. Initial Solution
def mode(array)
  max_frequency = 0
  array.each do |x|
    max_frequency = array.count(x) if array.count(x) > max_frequency
  end
  array.delete_if do |x|
    array.count(x) < max_frequency
  end
  array.uniq!
end



# 3. Refactored Solution
def mode(array)
  max_frequency = 0
  array.each {|x| max_frequency = array.count(x) if array.count(x) > max_frequency}
  array.delete_if {|x| array.count(x) < max_frequency}.uniq!
end



# 4. Reflection
=begin
-Which data structure did you and your pair decide to implement and why?

=>We chose to use an array. It seemed like an easier solution rather 
than to convert and array to a hash and then back again.


-Were you more successful breaking this problem down into implementable 
pseudocode than the last with a pair?

=>It seemed to be about the same. I still don't understand what DBC really
wants out of the pseudocode yet so I'm just kind of guessing.
I feel pseudocode is just a rough English translation of the code?


-What issues/successes did you run into when translating your pseudocode 
to code?

=>I feel like it was roughly the same idea. The code is always more complex.


-What methods did you use to iterate through the content? Did you find 
any good ones when you were refactoring? Were they difficult to 
implement?

=>We used each and delete_if. Both worked wonders and during refactoring
we were able to put them on one line.


=end