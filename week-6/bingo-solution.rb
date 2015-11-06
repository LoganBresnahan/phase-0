# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [4] hours on this challenge.


# Release 0: Pseudocode
# Outline:
=begin 
-Initialize an instance of the bingo board class.
-I need to create a method that will call letters and numbers.
  I need it to generate a number and a letter within my range. (Bingo) and (1..100).
-I need to create a check method to check if the column has the number in the bingo board.
-The check method need to replace the board space with an "X" if the number
  that was called is in the bingo board.
- I need to make sure the board won't replace duplicate numbers with "X" but only
  the number that is in the right letter column.
-I need to display the board after each churn and make it pretty.
=end
=begin
# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
	def call_letter_number
		
	end

# Check the called column for the number called.
  #fill in the outline here
  	def check_letter_number
		
  	end

# If the number is in the column, replace with an 'x'
  #fill in the outline here
  	if number is in column
  		replace with "x"
  	end

# Display a column to the console
  #fill in the outline here
  	puts new_column

# Display the board to the console (prettily)
  #fill in the outline here
    puts "*============*"
    puts "B |I |N |G |O "
  	puts "______________"
  	puts "#{board[0][0]}|#{board[0][1]}|#{board[0][2]}|#{board[0][3]} |#{board[0][4]}"
  	puts "______________"
  	puts "#{board[1][0]}|#{board[1][1]}|#{board[1][2]}|#{board[1][3]}|#{board[1][4]}"
  	puts "______________-"
  	puts "#{board[2][0]}|#{board[2][1]}|#{board[2][2]}|#{board[2][3]}|#{board[2][4]}"
  	puts "______________"
  	puts "#{board[3][0]}|#{board[3][1]}|#{board[3][2]}|#{board[3][3]}|#{board[3][4]}"
  	puts "______________"
  	puts "#{board[4][0]}|#{board[4][1]}|#{board[4][2]}|#{board[4][3]}|#{board[4][4]}"
  	puts "*============*"
=end
# Initial Solution
class BingoBoard

  def initialize(board)
    @board = board
    puts "=>Let's play BINGO!"
    puts "=>Here is your card."
    puts "*============*"
    puts "B |I |N |G |O "
    puts "______________"
    puts "#{board[0][0]}|#{board[0][1]}|#{board[0][2]}|#{board[0][3]} |#{board[0][4]}"
    puts "______________"
    puts "#{board[1][0]}|#{board[1][1]}|#{board[1][2]}|#{board[1][3]}|#{board[1][4]}"
    puts "______________-"
    puts "#{board[2][0]}|#{board[2][1]}|#{board[2][2]}|#{board[2][3]}|#{board[2][4]}"
    puts "______________"
    puts "#{board[3][0]}|#{board[3][1]}|#{board[3][2]}|#{board[3][3]}|#{board[3][4]}"
    puts "______________"
    puts "#{board[4][0]}|#{board[4][1]}|#{board[4][2]}|#{board[4][3]}|#{board[4][4]}"
    puts "*============*\n\n"
  end

  def call_letter_number
    @called_number = rand(1..100)
    @called_letter = ["B", "I", "N", "G", "O"].shuffle.pop
    p "Next is: #{@called_letter}-#{@called_number}. Anyone? Okay..."
    puts "\n"
  end

  def check_letter_number
    letter_array = ["B", "I", "N", "G", "O"]
    trans_array = @board.transpose
    @lat_board = letter_array.zip(trans_array).flatten.each_slice(6).to_a
  
    @lat_board.each do |array| 
        if array.include? @called_letter 
          if array.include? @called_number
            puts "Awesome! you got one."
            array.fill('X ', array.index {|i| i == @called_number}, 1)
          else puts "Not on your card I see..."       
          end
        end 
      end
    puts "*============*"
    puts "#{@lat_board[0][0]} |#{@lat_board[1][0]} |#{@lat_board[2][0]} |#{@lat_board[3][0]} |#{@lat_board[4][0] }"
    puts "______________"
    puts "#{@lat_board[0][1]}|#{@lat_board[1][1]}|#{@lat_board[2][1]}|#{@lat_board[3][1]} |#{@lat_board[4][1]}"
    puts "______________-"
    puts "#{@lat_board[0][2]}|#{@lat_board[1][2]}|#{@lat_board[2][2]}|#{@lat_board[3][2]}|#{@lat_board[4][2]}"
    puts "______________"
    puts "#{@lat_board[0][3]}|#{@lat_board[1][3]}|#{@lat_board[2][3]}|#{@lat_board[3][3]}|#{@lat_board[4][3]}"
    puts "______________"
    puts "#{@lat_board[0][4]}|#{@lat_board[1][4]}|#{@lat_board[2][4]}|#{@lat_board[3][4]}|#{@lat_board[4][4]}"
    puts "______________"
    puts "#{@lat_board[0][5]}|#{@lat_board[1][5]}|#{@lat_board[2][5]}|#{@lat_board[3][5]}|#{@lat_board[4][5]}"
    puts "*============*"
   end

end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]


new_game = BingoBoard.new(board)
new_game.call_letter_number
new_game.check_letter_number




# Refactored Solution but less pretty.
class BingoBoard

  def initialize(board)
    puts "=>Let's play BINGO!"
    puts "=>Here is your card."
      @board = board
      @letter_array = ["B", "I", "N", "G", "O"]
      @trans_array = @board.transpose
      @lat_board = @letter_array.zip(@trans_array).flatten.each_slice(6).to_a
      @lat_board.transpose.cycle(1) {|x| p x}
    puts "\n"
  end

  def call_letter_number
    @called_number = rand(1..100)
    @called_letter = ["B", "I", "N", "G", "O"].shuffle.pop
    p "Next is: #{@called_letter}-#{@called_number}. Anyone? Okay..."
    puts "\n"
  end

  def check_letter_number
    @lat_board.each do |array| 
        if array.include? @called_letter 
          if array.include? @called_number
             puts "Awesome! you got one."
             array.fill("X", array.index {|i| i == @called_number}, 1)
          else puts "Not on your card I see..."         
          end
        end 
      end
    @lat_board.transpose.cycle(1) {|x| p x}
   end

end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]


new_game = BingoBoard.new(board)
new_game.call_letter_number
new_game.check_letter_number


#Reflection
=begin 
1. How difficult was pseudocoding this challenge? What do you think of your pseudocoding 
style?
  It was pretty hard, and the reason I think it is hard, is that I had to go back and 
  revaluate my pseudocode. I don't think It turned out the same as what my code ended
  up being. I my style seems to be succint in nature. I think I could use a little more
  time initially on pseudocode so I don't get as stuck on challenges in the future.

2. What are the benefits of using a class for this challenge?
  The class is great for initialization. If this was a real Bingo game and included
  multiple random cards I'm sure the initialization would be invaluable. The class also allows
  me to run my methods seperatly which is awesome. In a more complex game I could run something
  like game.check_card to see what my current card looks like throughout the game.

3. How can you access coordinates in a nested array?
  You can flatten an array with the method flatten and use usual 
  iteration techniques. You can also use a flow technique that will
  test if an element is another array and then throw another iteration
  at it. You can use the fill method to target a certain index in the array and
  replace it.

4. What methods did you use to access and modify the array?
  I used each to iterate and within my iteration I have a conditional if statement
  and within that I use the fill method with the index method as an argument to the fill
  method to target the correct index and replace the desired number.

5. Give an example of a new method you learned while reviewing the Ruby docs. Based on what 
you see in the docs, what purpose does it serve, and how is it called?
  fill was the most usefull. It will fill or replace all or a certain element at a desired
  index. I assume it is used for the purpose of replacing an element without removing or
  adding anoher element but just changing the desired element. You can call fill on an
  array.

6. How did you determine what should be an instance variable versus a local variable?
  If it needed to be accessed in another method definition then it became an instance
  variable, if not, then a local variable.

7. What do you feel is most improved in your refactored solution?
  Only that there are less lines of code. The refactored solution trades being pretty 
  for memory space. 

=end