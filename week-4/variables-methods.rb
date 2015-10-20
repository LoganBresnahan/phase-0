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