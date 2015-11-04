# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:
=begin 
-Initialize an instance of the bingo board class.
-I need to create a method that will call letters and numbers.
  I need it to generate a number and a letter within my range. (Bingo) and (1..100).
-I need to create a check method to check if the column has the number in the bingo board.
-The check method need to replace the board space with an "X" if the number
  that was called was in the bingo board.
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
    @bingo_board = board
    @display =  puts "*============*"
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
  end

  def call_letter_number
  
  end

  def check_letter_number

  end


end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]


new_game = BingoBoard.new(board)


#Reflection

