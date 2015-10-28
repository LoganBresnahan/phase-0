# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?
=begin 
Define a method separate_commas that accepts one positive integer parameter.
In the method, push a comma every three places from the right.
Return the new modified parameter.

=end

# 1. Initial Solution
def separate_commas(integer)
	i = 0
	x = 2
	split_i = integer.to_s.reverse#.insert(i + 3, ",").reverse#.split("").join
	i_leng = split_i.length
	while i <= i_leng
		
		if i_leng <= 3
			p integer.to_s
			exit
		end

		if i_leng == 4 || i_leng == 5 || i_leng == 6
			split_i.insert(3, ",")
			p split_i.reverse
			exit
		end

		x += 1
		split_i.insert(i += x, ",")

		if x == 4
			x = 3
		end

		break if(i == i_leng + 1) || (i == i_leng + 2) || (i == i_leng - 1) #|| (i % i_leng == 0)
	end
	if split_i.reverse.start_with?(",")
		corr_dir = split_i.reverse
		corr_dir[0] = ""
		p corr_dir
	else
		p split_i.reverse
	end
end 

separate_commas(1000000)

#if i + 3 > split_i.length then
#	i+=3, ","
# 2. Refactored Solution
=begin
i = 0
while i <= split_i.length
i + 3
split_i.insert(i + 3, ",")
split_i.reverse
#add comma in right place
#insert(-4 + 3, ",")
=end



# 3. Reflection

# if 3 spaces exist from the right put a comma

#.reverse to work from the left
