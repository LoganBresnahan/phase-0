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
# => Line 37 in `<main>':
# 2. What is the type of error message?
# => (NameError)
# 3. What additional information does the interpreter provide about this type of error?
# => undefined local variable or method `south_park'
# 4. Where is the error in the code?
# => main:Object
# 5. Why did the interpreter give you this error?
# => Local variables need to be assigned to something otherwise Ruby doesn't know what it is.
# => It could be a method you forgot to define or a local variable.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# => Line 53 in `<main>':
# 2. What is the type of error message?
# => (NoMethodError)
# 3. What additional information does the interpreter provide about this type of error?
# => undefined method `cartman'
# 4. Where is the error in the code?
# => main:Object
# 5. Why did the interpreter give you this error?
# => It is an undefined method, so, the method was never created.
# => We know it's a method because it has () at the end.

# --- error -------------------------------------------------------

#def cartmans_phrase
  #puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => Line 69: in `cartmans_phrase'
# 2. What is the type of error message?
# => (ArgumentError)
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# => from errors.rb:73:in `<main>'
# 5. Why did the interpreter give you this error?
# => cartmans_phrase was not written to include an argument but one is
# => given when the method is called again.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
  #puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# => 89 in `cartman_says'
# 2. What is the type of error message?
# => (ArgumentError)
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# => from errors.rb:93:in `<main>'
# 5. Why did the interpreter give you this error?
# => The method was written to accept and argument but the method was later
# => called without one.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
  #puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => 111:in `cartmans_lie'
# 2. What is the type of error message?
# => (ArgumentError)
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# => from errors.rb:115:in `<main>'
# 5. Why did the interpreter give you this error?
# => The method was written for two arguments but was given one when called.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => 130:in `*'
# 2. What is the type of error message?
# => (TypeError)
# 3. What additional information does the interpreter provide about this type of error?
# => String can't be coerced into Fixnum
# 4. Where is the error in the code?
# => from errors.rb:130:in `<main>'
# 5. Why did the interpreter give you this error?
# => You can't multiply 5 by a string. You have to do it the reverse.
# => "Respect my authoritay!" * 5

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => 146:in `/'
# 2. What is the type of error message?
# => (ZeroDivisionError)
# 3. What additional information does the interpreter provide about this type of error?
# => divided by 0
# 4. Where is the error in the code?
# => from errors.rb:146:in `<main>'
# 5. Why did the interpreter give you this error?
# => You can't devide by 0 in math.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 162:in `require_relative'
# 2. What is the type of error message?
# => (LoadError)
# 3. What additional information does the interpreter provide about this type of error?
# => cannot load such file -- /home/logan/devbootcamp_phase0/phase-0/week-4/cartmans_essay.md
# 4. Where is the error in the code?
# => from errors.rb:162:in `<main>'
# 5. Why did the interpreter give you this error?
# => require_relative is trying to require a file that does not exist within the path.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin 
-Which error was the most difficult to read?
The south_park error. From that error on they were different from the provided example. 
I feel like what I put makes sense but i'm not totally sure.

-How did you figure out what the issue with the error was?
I know what caused all the errors but I don't know if I read what was what in the error codes.

-Were you able to determine why each error message happened based on the code? 
Yes.

-When you encounter errors in your future code, what process will you follow to help you debug?
Just knowing what line it is on helps above all else. As long as I know where it is I will denug it.

=end