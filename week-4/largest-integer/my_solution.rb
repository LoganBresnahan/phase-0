# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
	if list_of_nums.empty?
		return nil
	else p list_of_nums.sort.pop
	end
end

largest_integer([5, 2, 3])

#Worse solution
def largest_integer(list_of_nums)
	large = list_of_nums.sort {|x, y| y <=> x}
	if list_of_nums.empty?
		return nil
	else p large[0]
	end
end

largest_integer([5, 2, 3])