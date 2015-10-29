=begin
1. Create a new list: 
-A vairable and set to an empty Hash.

2. Add an item with a quantity to the list: 
-The method will take three arguments a empty hash, a value, and a key
-Match the item and quantity for the hash.

3.Remove an item from the list:
-We will have two arguments the list and item we are trying to remove.
-Check if the item exists in the list.
-Compare the item to the argument
-If the argument is true then remove the item.

4.Update quantities for items in your list
-Iterate through the list
-We will have three arguments the list, item, and quantity.
-If the item is in the list then it will update the quantity of said item
-If the item does not exist put item in and quantity in list.
-(optional) be able to update item name

5.Print the list (Consider how to make it look nice!)
-Return an output the list the list with a nice formatting.
=end

list_new = Hash.new

def add(list, item, qty)
  list[item] = qty
  list
end

def remove(list, item)
  list.delete(item) if list[item]
  list
end

def update(list, item, qty)
  list[item] = qty if list[item]
  list
end

def print_list(list)
  list.each do |item, qty|
    puts "#{item} : #{qty}"
  end
end

my_list = list_new
print_list( add(add(my_list, "cats", 2), "dog", 3) )

=begin
-What did you learn about pseudocode from working on this challenge?
That it can be really helpful. My partner had a good idea of how to go about the challenge
we basically wrote that down.

-What are the tradeoffs of using Arrays and Hashes for this challenge?
The hash allowed us to key a value which an array would not. I don't
even know why I would want an array unless I wanted an array with two
items inside a larger array.

-What does a method return?
It returns the last item that was evaluated in the method.

-What kind of things can you pass into methods as arguments?
Array, Hashes, Integers, Strings.

-How can you pass information between methods?
By declaring something in the main outside of any method. Or by chain
calling the arguments when you are calling the method.
ex: first_method(second_method())

-What concepts were solidified in this challenge, and what concepts are still confusing? 
My partner showed me some really great ways to manipulate hashes. Even though I have
learned this I find it hard to recall mentally.


=end