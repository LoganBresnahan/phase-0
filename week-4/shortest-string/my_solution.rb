# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
	if list_of_words.empty?
		return nil
	else p list_of_words.sort_by {|x| x.length}.shift
	end
end

shortest_string(["cat", "caccoon", "dribbling"])

#Worse solution
def shortest_string(list_of_words)
	short = list_of_words.sort {|x, y| x.length <=> y.length}
	if list_of_words[0] == nil
		return nil
	else p short[0]
	end
end

shortest_string(["cat", "caccoon", "dribbling"])