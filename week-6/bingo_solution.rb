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

  use PrettyPrint to display the arrays to the console properly.
=end
# Initial Solution
#require 'pp'
=begin
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
    @bingo_board.each{|x| p x}
  end


end
=end
# Refactored Solution
begin class BingoBoard
attr_accessor :random_set, :bingo_board
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
    unless @bingo_board.rassoc(@random_set[1]) == nil
      return true
    else
      return false
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
    @bingo_board.each{|x| p x}
  end


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
=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  Psuedocoding this challenge was easier than getting everything working, though I think my psuedocode style is probably too close to what my code ends up looking like, or can otherwise be too vague.
What are the benefits of using a class for this challenge?
  A class works well here since you are updating the variables with several different methods. By intializing an instance of the class, you can update that instance throughout the file.
How can you access coordinates in a nested array?
  There are a few ways, but the easiest is to call array[index][index]. What I did was to iterate through the array of arrays and then iterate through each of those arrays in order to get to the information I needed.
What methods did you use to access and modify the array?
  I used :map! to iterate through and modify the arrays. I also used the :include? method to check for the presence of the numbers I needed.
Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
  I learned the :rassoc method, though I struggled to properly implement it here. It should bascially allow me to search through nested arrays to find a matching element and return it.It can be called with array.rassoc("thing to find")
How did you determine what should be an instance variable versus a local variable?
  I used an instance variable if I believed I would need the update or access the information in a different method or later in my definiton of the class.
What do you feel is most improved in your refactored solution?
  I used the rassoc method to less repetitively look for matches, but I dont think the method works as well as my original solution. If I had time to do a board creator, I think it would have been fine, but as it stands I feel like it would come back with repeats or the wrong section, since it doesn't look for the letter of the column.

=end