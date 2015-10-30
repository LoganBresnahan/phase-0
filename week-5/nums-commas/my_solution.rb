# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.
=begin
# 0. Pseudocode

# What is the input?
-The input is an integer it can be any size.
# What is the output? (i.e. What should the code return?)
-The output should be the integer reformatted to include
commas in the correct spaces according to the USA standard.
# What are the steps needed to solve the problem?
-Define a method that takes one argument.
-Turn the argument into a string.
-Separate the characters in the string.
-Reverse the string.
-Once the string is reversed we can count the characters by 3's
-After 3 characters insert a comma.
-Reverse the string back for formatting.
-Remove any extra commas at the front of the string.
-Make sure the program returns the newly formated argument as a string.
=end

=begin
# 1. Initial Solution. WORKS AS PROGRAM BUT WON'T PASS RSPEC
def separate_comma(integer)
	i = 0
	x = 2
	fake = " "
	split_i = integer.to_s.reverse
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

# 2. Refactored initial solution. WORKS AS PROGRAM BUT WON'T PASS RSPEC
def separate_comma(integer)
	i = 0
	x = 2
	fake = " "
	split_i = integer.to_s.reverse#.insert(i + 3, ",").reverse#.split("").join
	i_leng = split_i.length

	if i_leng <= 3

	elsif i_leng == 4 || i_leng == 5 || i_leng == 6
			split_i.insert(3, ",")
	else
		while i <= i_leng
			
			x += 1
			split_i << fake
			split_i.insert(i += x, ",")
			
			if x == 4
				x = 3
			end
		end
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
=end

# 2B. Refactored second solution. DOES PASS RSPEC
def separate_comma(integer)
	s_integer = integer.to_s.reverse
	if s_integer.length <= 3
		p integer.to_s
	elsif s_integer.length > 3 && s_integer.length <= 6
		s_integer.insert(3, ",")
		p s_integer.reverse
	elsif s_integer.length > 6 && s_integer.length <= 8
		s_integer.insert(3, ",") && s_integer.insert(7, ",")
		p s_integer.reverse
	end
end

separate_comma(10000000)


 #2C Refactored to use arrays and not limited. Passes Rspec
 def separate_comma(integer)
	arr_int = integer.to_s.split("").reverse.each_slice(3).to_a
	commas = [","] * integer.to_s.length
	answer = arr_int.zip(commas).flatten.reverse.join
	if answer.start_with?(",")
		answer[0] = ""
		return answer
	else answer
	end
end

p separate_comma(1000000000000000000000000000000000000000000000)
# 3. Reflection


