# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# DEF method with one argument
# Make the argument accessible by individual words.
# Reverse the words
# RETURN the new argument but with the individual words reversed.


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
=begin 
-What concepts did you review in this challenge?
Defining methods for Ruby and the difference between map and each
and which is destructive.

-What is still confusing to you about Ruby?
Ranges and rspec. I never know what is going on with rspec.

-What are you going to study to get more prepared for Phase 1?
More stuff on procs and lambdas as well as utilizing counters.

=end