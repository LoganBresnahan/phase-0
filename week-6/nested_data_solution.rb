# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array.each {
  |element|
  if element.kind_of?(Array)
    element.each {|ielem|  p ielem + 5}
  else 
    p element + 5
  end
  }

#Refactored 
p number_array.flatten.map {|element| element + 5}

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.flatten.map{|element|  element + "ly"}

#Reflection
=begin 
What are some general rules you can apply to nested arrays?
	Everything can be accessed at some point. You would iterate
	over them in a similiar manner as a regular array but you need
	to add a layer of depth to your code.

What are some ways you can iterate over nested arrays?
	You can flatten an array with the method flatten and use usual 
	iteration techniques. You can also use a flow technique that will
	test if an element is another array and then throw another iteration
	at it.

Did you find any good new methods to implement or did you 
re-use one you were already familiar with? What was it and why 
did you decide that was a good option?
	We though flat_map would do a good job but it would only flatten
	an array by one level. We were more comfortable with flatten and each
	which did a fine job.

=end