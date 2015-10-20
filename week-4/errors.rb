# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
  #while true
    #puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => The error is occuring in the errors.rb file.
# 2. What is the line number where the error occurs?
# => Line 8
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => unexpected '=', expecting end-of-input
# 5. Where is the error in the code?
# => "Screw you guys " + "I'm going home." = cartmans_phrase
#                                           ^
# 6. Why did the interpreter give you this error?
# => They local variable needs to be recieving the values which means it should be
# => on the left and and the strings should be on the right.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# => Line 37
# 2. What is the type of error message?
# => in `<main>':
# 3. What additional information does the interpreter provide about this type of error?
# => undefined local variable or method
# 4. Where is the error in the code?
# => `south_park' for main:Object (NameError)
# 5. Why did the interpreter give you this error?
# => Local variables need to be assigned to something otherwise Ruby doesn't know what it is.
# => It could be a method you forgot to define or a local variable.

# --- error -------------------------------------------------------

cartman()

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#

# --- error -------------------------------------------------------

5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.