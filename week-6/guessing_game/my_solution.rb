# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
    unless @answer.is_a? Integer
      return ArgumentError ("You need to guess a number!")

  end
end


    def guess(int)
      if int == @answer
        @solved == true
        return :correct
      elsif
        int > @answer
          return :high
      else
          return :low
        end
      end

  def solved?
    if @solved
      return true
  end
end
end
game = GuessingGame.new(11)

puts game.guess(10)
puts game.solved?



# Refactored Solution






# Reflection