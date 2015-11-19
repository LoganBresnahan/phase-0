# Cipher Challenge

# I worked on this challenge [by myself, with:]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# Here we have a method being created that takes 1 argument.
# def dr_evils_cipher(coded_message)
#   #Here we are creating a input variable and setting it equal to our argument.
#   #We are running two methods on our argument, downcase which will make all of the character lowercase
#   # ,and split which will separate each letter by a set of quotation marks and return them all in an array. 
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
#   #Here we are declaring a variable named decoder_sentence and setting it equal to an empty array.
#   decoded_sentence = []
#   #Here we are declaring a variable cipher and setting it equal to a hash. The hash is the basis for our
#   # cipher where we shift the key letters by 4 and which are represented by our values. So, our message had to be
#   # created with a 4 letter shift in the first place.
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   #Here we are iterating through our array input with the each method.
#   input.each do |x|                                                                                         # What is #each doing here?
#     #Here we are creating a variable found_match and setting it equal to false.
#     found_match = false                                                                                 # Why would this be assigned to false from the outset? What happens when it's true?
#     #Here we are running the method each_key on our cipher hash and are targeting the keys.
#     cipher.each_key do |y|                                                                                # What is #each_key doing here?
#       #Here we ask if the letter from our input array is the same as the key letter in our hash.
#       if x == y                                                                                        # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
#         #Here if they did match, then we append cipher's value into the decoded_sentence array. cipher[y] returns the
#         # associated value.
#         decoded_sentence << cipher[y] #which gives the value
#         #Here we then declare that found_match is equal to true so that our second if conditional below will fail.
#         found_match = true
#         #Here the each_key loop will break if the last letter in input was decoded as something that matched the cipher key. 
#         break                                                                                           # Why is it breaking here?
#         #Here we have an elsif that will handle the special symbols that do not exist in the cipher hash,
#         # but can still be a part of the secret message. So, we have || (or) statements that allow any of
#         # the conditionals to be true for the next step of the elsif to be run.
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*"                #What the heck is this doing?
#         #Here if one of the above symbols did exist in the secret message then we set it equal to and empty space
#         # and append it into the decoded sentence.
#         decoded_sentence << " "
#         #Here we set found_match equal to true so the second if conditional won't run.
#         found_match = true
#         #Here the each_key loop breaks if the last character in input was one of the special symbols above.
#         break
#       #Here we go through another elsif conditional if the character in input was not one specified above.
#       # We ask if the character is a number included in 0 to 9. We have a range (0..9) that turns into an array with all numbers
#       # from 0 to 9 and use the method include with the parameter of x from our input each iteration. If include? returns true
#       # it will run the code in the elsif conditional.  
#       elsif (0..9).to_a.include?(x)                                                                  # Try this out in IRB. What does   " (0..9).to_a "    do?
#         #Here if the character was a number then we should just append that character as is to the decoded message.
#         decoded_sentence << x
#         #Here found_match is set equal to true so the second if conditional won't run below.
#         found_match = true
#         #The each_key breaks if the last character evaluated happened in this conditional.
#         break
#       end
#     end
#     #Here if the found_match was never set to true in the above each_key loop then the conditional will run.
#     if not found_match                                                                                 # What is this looking for?
#       #Here the original character from the input will be put into the decoded_sentence array as is.
#       decoded_sentence << x
#     end
#   end
#   #Here the decoded_sentence array is then set equal to itself after the join() method is sent to it to squeeze the translated characters
#   # together as a string.
#   decoded_sentence = decoded_sentence.join("")
#   #What is this method returning?
# end

# Your Refactored Solution
def dr_evils_cipher(coded_message)
 input = coded_message.split("")
 decoded_sentence = []

  let_to_num = (" ".ord.."Z".ord).to_a.map {|num| (num + 10).chr}
  letters = (" ".."Z").to_a
  cipher = Hash[let_to_num.zip(letters).flatten.each_slice(2).to_a]

  match = false
  input.each do |letter|
    cipher.each_key do |key|
      if letter == key
        decoded_sentence << cipher[key]
        match = true
      end
    end
  end
  p match
  decoded_sentence = decoded_sentence.join("")
end


def code(string)
  string.upcase.split("").map {|letter| (letter.ord + 10).chr}.join("")
end


# Driver Test Code:
p dr_evils_cipher("ROVVY6*P\\YW*NYM^Y\\*O`SV")
p dr_evils_cipher(";:*VS^^VO*WYXUOc]*T_WZSXQ*YX*^RO*LON8")

# p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# # Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
# p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
# &fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
# p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
# p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
# @m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
# p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# Keep your reflection limited to 10-15 minutes!
=begin 
-What concepts did you review or learn in this challenge?
This challenge provided a look at hashes and ranges, two things I find difficult
to navigate at times. I'm still not satisfied with my utilization of the range.
I couldn't find a way to wrap it around if you want a really large shift.

-What is still confusing to you about Ruby?
The ranges like above but also break statements and looping with each_key.
Not entirely sure why I would need to break from it. I also, need to look at
the enumerable module some more. 

-What are you going to study to get more prepared for Phase 1?
I really want to just read the whole well-grounded rubyist book again. Also,
JS objects. They are impossible to manipulate. 

=end