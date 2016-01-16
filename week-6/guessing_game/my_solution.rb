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
        @solved = true
        return "Correct"
      elsif
        int > @answer
        @solved = false
          return :high
      else
        @solved = false
          return :low
        end
      end

  def solved?
    if @solved == true
      return true
    else
      return false
  end
end
end
game = GuessingGame.new(5)

puts game.guess(5)
puts game.solved?


# Reflection

=begin

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
  When instance variables and methods are assigned to an object, they give the object information on what it is or does, respectively. When you pass new information to a real world object or call a method on it, it reacts according the rules set by the class.
When should you use instance variables? What do they do for you?
  Instance variables allow you to save the state of a characteristic universal to objects in the class. So if all objects in class paint have a instance variable color, each object in the class will have that variable and methods called on the instance variable will be able to update it.
Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

I struggled with getting the solved instance variable to update appropriately. Once I got a better understanding of what was actually happening, I found it a lot easier to get the proper information returned.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
    I think my solution might have been wrong to some degree, since I don't really need to return symbols and it will still work the same way. I think if I were moving forward, symbols would be better than strings since you can always call them and they will return the same object rather than a different version of the same object. That way, you can use it to consistently update information when it arrives.

=end