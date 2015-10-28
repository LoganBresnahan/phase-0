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