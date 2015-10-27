# Pad an Array

# I worked on this challenge [by myself, with: Chris Miklus]

# I spent [2.5] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode
=begin

DEFINE method pad, which takes as input an array, a size, and an optional value

define a blank array called new_array

IF array length is less than size input, our pad should return a copy of the original array with dummy text filling the blank space

ELSE if our size is less than the array itself or if the two are equal, RETURN a copy of the original array


DEFINE method pad!, which takes as input an array, a size, and an optional value

IF array is less than size input, our pad should return the original array edited with dummy text filling the blank space

ELSE if our size is less than the array itself, RETURN the array

=end
# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
=begin
def pad(array, min_size, value = nil) #destructive
   if array.length < size
      i = size - array.length
      array.each do |x| 
        if i > 0
          array << value
          i-=1
        end
      end
      array
    else
      array
    end
end
=end

#non-destructive

#shortest way which also works on the destructive method,
#but I'm leaving it the old way to show different methods.
def pad(array, size, value=nil)
	new_array = []
	if array.length < size
		i = size - array.length
		i.times {new_array << value} 
		array = array + new_array 
	else
		array = Array.new.concat(array)
	end
end

#destructive method
def pad!(array, min_size, value = nil) 
	if array.length < min_size
		i = min_size - array.length
		while i > 0
			array << value
			i -= 1
		end
		array
	else 
		array
	end
end


# 3. Refactored Solution
#shortest way which also works on the destructive method,
#but I'm leaving it the old way to show different methods.
def pad(array, size, value=nil)
	new_array = []
	if array.length < size
		i = size - array.length
		i.times {new_array << value} 
		array = array + new_array 
	else
		array = Array.new.concat(array)
	end
end


# 4. Reflection
=begin
-Were you successful in breaking the problem down into small steps?
Yes, hopefully it's still not too long.

-Once you had written your pseudocode, were you able to easily translate
 it into code? What difficulties and successes did you have?
For the most part, we had some changes while actually writing the solution.
But it was helpful to get our mental thoughts on paper.

-Was your initial solution successful at passing the tests? If so, why 
do you think that is? If not, what were the errors you encountered and 
hat did you do to resolve them?
Yes, for the destructive method. This was a lot easier than the non
destructive one. We only had one working solution which is what we 
ended with.

-When you refactored, did you find any existing methods in Ruby to 
clean up your code?
.times was awesome and got rid of about 4 lines. We could use it to
get rid of .each and a while loop.

-How readable is your solution? Did you and your pair choose descriptive
 variable names?
We could put in comments I guess. We used "i" to symbalize our counter as
it is common practice.

-What is the difference between destructive and non-destructive methods 
in your own words?
Destructive changes the original object distguished by the object_id. Non
destructive will create a copy of the original but have a different 
object_id.
=end
