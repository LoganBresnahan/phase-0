# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
	if list_of_words.empty?
		nil
	else p list_of_words.sort_by {|x| x.length}.pop
	end
end

longest_string(["rabbit", "running", "driverness"])

#Worse solution
def longest_string(list_of_words)
	if list_of_words[0] == nil
		nil
	else p list_of_words.sort {|x, y| y.length <=> x.length}[0]
	end
end

longest_string(["rabbit", "running", "driverness"])