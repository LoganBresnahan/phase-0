require 'uri'
#Full name greeting:
puts "What is your full name, starting with your first name?"
first_name = gets.chomp
puts "Your first name is: " + first_name + ". Middle name?"
middle_name = gets.chomp
puts "Your middle name is: " + middle_name + ". Last name?"
last_name = gets.chomp
puts "Your last name is : " + last_name + ". That means your whole name is..."
puts first_name + " " + middle_name + " " + last_name + "!"


#Bigger, better favorite number:
puts "What is your favorite number?"
fav_num = gets.chomp
better_num = fav_num.to_i + 1
puts fav_num + "? That's ok...I guess, but how about this?... " + better_num.to_s + ". I think it suits your more."

=begin 
-How do you define a local variable?
According to Chris Pine, a local variable is like a noun. It's a "thing" in our program.
Local variables need to start with a lowercase letter, and you can store different values in them.
Such as, a number or maybe a string of letters.

-How do you define a method?
def this_is_my_method_name
	*code here
end

-What is the difference between a local variable and a method?
Mr. Pine says that a method is like a verb, it is something that carries out an action.
the local variable is static and just holds a value to itself.
local variables are often used inside of methods.

-How do you run a ruby program from the command line?
ruby name_of_program.rb

-How do you run an RSpec file from the command line?
rspec name_of_file.rb

-What was confusing about this material? What made sense?
I can get switched around with whether my numbers are currently integers
or if they are strings. You really have to pay attention to how they came about.
Assigning variables seems pretty straightforward.

=end

https://github.com/LoganBresnahan/phase-0/blob/master/week-4/address/my_solution.rb

https://github.com/LoganBresnahan/phase-0/blob/master/week-4/math/my_solution.rb
