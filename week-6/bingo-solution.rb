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
  	p "Next is: #{@called_letter}-#{@called_number}. Anyone? No, okay..."
  	puts "\n"
  end

  def check_letter_number
  	letter_array = ["B", "I", "N", "G", "O"]
	trans_array = @board.transpose
	lat_board = letter_array.zip(trans_array).flatten.each_slice(6).to_a
	

	lat_board.each do |array| 
  		if array.include? @called_letter 
  			if array.include? @called_number
  				array.fill("X", array.index {|i| i == @called_number}, 1)
  				#lat_board.transpose.cycle(1) {|x| p x}				
  			end
  		end
  		
    end
    lat_board.transpose.cycle(1) {|x| p x}
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

#until board = win
#Reflection

#Extra Code
=begin 

	#Checks if number is included at all in board. Tries to transpose @board and run another conditional to target the right number that could be doubled.
  	if @board.include? @called_number
  		@board.flat_map  do |num| 
  			if num == @called_number && if new_board_array.each {|letter| letter.include? @called_number && @called_letter}
  				num == "X"
  			}
  			end
        end
  	end	
  	# This idea is using a hash but don't know how to replace target number after is has been determined to be in the right list.
  	#if letter_hash.each {|x, y| x == @called_letter && x[0].include? @called_number}							   
  end


end
# Refactored Solution
if letter_hash.each {|x, y| x == @called_letter && x[0].include? @called_number}

board.transpose.each {|array| if (array.include? @called_letter && array.include? @called_number) then array.fill("X", array.index {|i| i == @called_number})}

# Hash I might use for the comparison.
	letter_hash = Hash.new
	letter_hash["B"] = @board.transpose[0]
	letter_hash["I"] = @board.transpose[1]
	letter_hash["N"] = @board.transpose[2]
	letter_hash["G"] = @board.transpose[3]
	letter_hash["O"] = @board.transpose[4]
	trans_array = letter_hash.flatten(2).each_slice(6).to_a	

used_numbers = []
  	if @board.flatten.include?(@called_number)
  		#used_numbers << 
  		used_numbers << @board.flatten.select! {|num| num == @called_number}#@board.flat_map {|num| num.select {|num| num == @called_number}}# Does not work.#slice(1)
  	end
  	@board
  	p used_numbers

#This is not displayed right and missing last row. How to make display nice?
display =    "______________"
				 "#{lat_board[0][0]}|#{lat_board[0][1]}|#{lat_board[0][2]}|#{lat_board[0][3]} |#{lat_board[0][4]}"
				 "______________"
				 "#{lat_board[1][0]}|#{lat_board[1][1]}|#{lat_board[1][2]}|#{lat_board[1][3]}|#{lat_board[1][4]}"
				 "______________-"
				 "#{lat_board[2][0]}|#{lat_board[2][1]}|#{lat_board[2][2]}|#{lat_board[2][3]}|#{lat_board[2][4]}"
				 "______________"
				 "#{lat_board[3][0]}|#{lat_board[3][1]}|#{lat_board[3][2]}|#{lat_board[3][3]}|#{lat_board[3][4]}"
				 "______________"
				 "#{lat_board[4][0]}|#{lat_board[4][1]}|#{lat_board[4][2]}|#{lat_board[4][3]}|#{lat_board[4][4]}"
				 "*============*"

=end
