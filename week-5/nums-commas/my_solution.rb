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
def separate_comma(integer)
	i = 0
	x = 2
	fake = " "
	split_i = integer.to_s.reverse#.insert(i + 3, ",").reverse#.split("").join
	i_leng = split_i.length
	while i <= i_leng
		
		if i_leng <= 3
			p integer.to_s
			return
		end

		if i_leng == 4 || i_leng == 5 || i_leng == 6
			split_i.insert(3, ",")
			p split_i.reverse
			return
		end
		
		x += 1
		split_i << fake
		split_i.insert(i += x, ",")
		
		if x == 4
			x = 3
		end
		
		#break if(i == i_leng + 1) || (i == i_leng + 2) || (i == i_leng - 1) #|| (i % i_leng == 0)
	end

	split_i.strip!

	if split_i.reverse.start_with?(",")
		corr_dir = split_i.reverse
		corr_dir[0] = ""
		p corr_dir.strip
	elsif 
		p split_i.reverse
	end
end 

separate_comma(100000000000000000)






# 3. Reflection

