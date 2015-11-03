# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 3

  #We are defining a method that takes two arguments. We have a hash inside our method where the key is the food the user wants to make, and the value is the number of baking units in a serving. 

  library.each do |food|
#     loop 1: food = ["cookie", 1]
#             library[["cookie", 1]] => nil
#             library[item_to_make] => 7
    
    if library[food] != library[item_to_make] #=> true
      
      p error_counter += -1 
#       error_counter = 2
    end
  end
  
  #Go through the food database and compare each food with the food put in as argument 1. We will compare how many ingredients it takes to make said food. If those ingredient numbers are not equal, we increment the error_counter down by one. After this is done running, you will either end up with an error_counter of 3 or 0. 

  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  
  # If your error_counter is greater than 0, raise an argument that will end the program. It will tell you that your input does not match anything in the database. In other words, your food isn't listed.

  serving_size = library.values_at(item_to_make)[0]
  serving_size_mod = order_quantity % serving_size

  #We define a variable called serving_size which is equal to the result of pulling the value that matches your key. Then we define serving_size_mod which is the left-over baking units after making said food item.
  
  case serving_size_mod
  when 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

#In the case statement if we have leftover ingredients it will tell us how much is leftover and how many serving we can make. Otherwise it just tells us how many servings we can make.



#Refactored
def serving_size_calc(item_to_make, order_quantity)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  price = {"cookie" => 2, "cake" => 5, "pie" => 3}

  raise ArgumentError.new("#{item_to_make} is not a valid input") unless menu.has_key?(item_to_make)

  serving_size = menu[item_to_make]
  leftovers = order_quantity % serving_size
  cost = (order_quantity / serving_size) * price[item_to_make]
  
  if leftovers == 0
    "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make} which costs #{cost} dollars."
  else
    "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{leftovers} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end


 p serving_size_calc("pie", 7)
# p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
#p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin 
What did you learn about making code readable by working on this 
challenge?
  A lot, it is really hard to read other peoples code! It's really
  important to format everything correctly and to use good practices.
  I need to name my variables better.

Did you learn any new methods? What did you learn about them?
  We learned about about has_key? and values_at. We learned they both
  select certain keys and values to return and or output what we need.

What did you learn about accessing data in hashes? 
  There are quite a few ways to do it. You can change a hash to an
    array and use array selectors as well. Usually Ruby has a built in
    method that will do the hard work.

What concepts were solidified when working through this challenge?
  The idea of proof reading and explaining code line by line, and also
  how to access things in hashes the correct way.

=end