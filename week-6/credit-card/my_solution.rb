
# Class Warfare, Validate a Credit Card Number

=begin
Starting with the second to last digit, double every other digit until you reach the first digit.

Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart, 10 becomes 1 + 0).

If the total is a multiple of ten, you have received a valid credit card number!

Example given 4563 9601 2200 1999
Origin: 4   5   6   3   9   6   0   1   2   2   0   0   1   9   9   9
Step 1: 8   5  12   3  18   6   0   1   4   2   0   0   2   9  18   9
Step 2: 8 + 5 + 1 + 2 + 3 + 1 + 8 + 6 + 0 + 1 + 4 + 2 + 0 + 0 +2+ 9 + 1 + 8 + 9
Step 3: 70 (total above) % 10 == 0
Step 4: Profit


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: a credit card number (integer)
# Output: validity of credit card numder (boolean)
# Steps:
  
1. Starting with the second to last digit, double every other digit until you reach the first digit.

2. Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart, 10 becomes 1 + 0).

3. If the total is a multiple of ten, you have received a valid credit card number!

=end
# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(card_number)
    raise ArgumentError.new("Credit card number be 16 digits long") unless card_number.to_s.length == 16
    @credit_card = card_number
  end
  
  def check_card
    card_as_array = @credit_card.to_s.split("").map {|element| element.to_i}
    i = card_as_array.length - 2
    while i >= 0
      card_as_array[i] *= 2
      i -= 2
    end
    sum = 0
    card_as_array.join.split("").map {|x| sum += x.to_i}
    (sum % 10) == 0 ? true : false
  end
end

our_card = CreditCard.new(4563960122001999)
p our_card.check_card

# Refactored Solution
# We couldn't shorten our initial solution. 
=begin
#Different Idea but won't work with 0's in the argument.
class CreditCard
	def initialize(card_number)
		 @card_number = card_number.to_s.split("").map {|i| i.to_i}
	end

	def check_card
		@card_hash = Hash[@card_number.each_slice(2).to_a]
		one_card = @card_hash.map {|x, y| x * 2 }
		two_card = @card_hash.map {|x, y| y }
		p doubled_card = one_card.zip(two_card).flatten.join.split("").map{|x| x.to_i}
		sum = 0
		p doubled_card.map {|x| sum += x}
		p sum
		(sum % 10) == 0 ? true : false
	end

end

card = CreditCard.new(4563960122001999)
p card.check_card
=end





# Reflection
=begin 
-What was the most difficult part of this challenge for you and your pair?
	The first part where we were to only double everyother number. Getting
	the logic correct for the counter is still a struggle for me. We tried
	a few different things but found the correct condition.

-What new methods did you find to help you when you refactored?
	Method chaining things like join() and split() made everything fairly
	neat. We ended up going with our first solution. Unless there is a method
	for reducing a while loop to a single line I'm not sure the loop could 
	get any smaller. Besides the loop every other condition is on one line.

-What concepts or learnings were you able to solidify in this challenge?
	Once again, the more practice I have with counters the better. Also, the
	operands lie *= and -= can throw me sometimes, it's good to keep using them.
	I didn't even know you could do *=. I don't use map much either so this was
	a good refresher.

=end







# Reflection