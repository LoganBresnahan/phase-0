# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode



# Initial Solution
def reverse_word(words)
	words.split(" ").each {|word| word.reverse!}.join(" ")
end

p reverse_word("All your base our belong to us.")



# Refactored Solution
def reverse_word(words)
	words.split(" ").map {|word| word.reverse}.join(" ")
end

p reverse_word("All your base our belong to us.")
p reverse_word("")
p reverse_word("yo")




# Reflection