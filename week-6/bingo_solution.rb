# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:
=begin
# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  #set an array of strings "b", "i", and so on
  retrieve a random letter from the array
  set a range of numbers and retrieve random number
  return the letter and the number

# Check the called column for the number called.
  #fill in the outline here
  on bingo_board, run an each method
  assign letters to indeces--b = 0, i = 1, n = 3...
  if the input has that letter, only check the array at that index
  if that array includes the number input, return TRUE


# If the number is in the column, replace with an 'x'
  #fill in the outline here
  IF letter_checker returns TRUE
    IF Random set numbers are equal to a number in that column
      replace that number with and X
    Else
      RETURN normal element
ELSE
  RETURN normal array


# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here
=end
# Initial Solution
require 'pp'
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end


  def randomizer
    letters = ["b","i","n","g","o"]
    numbers = 1..100
    @random_set = [letters.sample.upcase, numbers.to_a.sample]
  end

  def letter_checker
    randomizer
    if @random_set[0] == "B"
      @bingo_board[0].include?(@random_set[1])
    elsif @random_set[0] == "I"
      @bingo_board[1].include?(@random_set[1])
    elsif @random_set[0] == "N"
      @bingo_board[2].include?(@random_set[1])
    elsif @random_set[0] == "G"
      @bingo_board[3].include?(@random_set[1])
    else
      @bingo_board[4].include?(@random_set[1])
  end
end

  def number_replacer
    letter_checker
    if letter_checker == true
      @bingo_board.map!{ |outer_array|
        if outer_array.kind_of?(Array)
          outer_array.map!{|inner_array| inner_array == @random_set[1] ? "X" : inner_array }
        else
          @bingo_board
        end
      }
    else
      @bingo_board
      end
    end

  def board_printer
    number_replacer
    @bingo_board.each{|x| pp x}
  end


end

# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end


  def randomizer
    letters = ["b","i","n","g","o"]
    numbers = 1..100
    @random_set = [letters.sample.upcase, numbers.to_a.sample]
  end

  def letter_checker
    randomizer
    if @random_set[0] == "B"
      @bingo_board[0].include?(@random_set[1])
    elsif @random_set[0] == "I"
      @bingo_board[1].include?(@random_set[1])
    elsif @random_set[0] == "N"
      @bingo_board[2].include?(@random_set[1])
    elsif @random_set[0] == "G"
      @bingo_board[3].include?(@random_set[1])
    else
      @bingo_board[4].include?(@random_set[1])
  end
end

  def number_replacer
    letter_checker
    if letter_checker == true
      @bingo_board.map!{ |outer_array|
        if outer_array.kind_of?(Array)
          outer_array.map!{|inner_array| inner_array == @random_set[1] ? "X" : inner_array }
        else
          @bingo_board
        end
      }
    else
      @bingo_board
      end
    end

  def board_printer
    number_replacer
    @bingo_board.each{|x| pp x}
  end


end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.board_printer
#Reflection