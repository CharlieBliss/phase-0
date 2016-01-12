# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: This class will take an array of strings.
# Output: There will be a few methods, the first will simply return the length of the array, the second will roll an random element of the that array.
# Steps:
=begin
First, the Class is defined as Die and created, making sure that it has to take an Array of strings as the input

The die is given a function, sides, which is going to return how many sides the die has, i.e. how many strings are in the original array

The die is given a second function, roll, which will return a random element of the array.
  This can be done by finding a random number between one and the length of the array and returning the element at that random number.


# Initial Solution
=begin
class Die
  def initialize(labels)
    @labels = labels
    unless @labels.is_a? Array
    raise ArgumentError.new("Your Die needs to be an Array of Strings")

  end

  def sides
    return @labels.length
  end
end

  def roll
      x = (rand(@labels.length))
      return @labels[x]
  end
end

new_die = Die.new(["Bitter", "Roots", "Make", "Better", "Beers"])

print new_die.roll
=end
# Refactored Solution


class Die
  def initialize(labels)
    @labels = labels
    unless @labels.length > 0 && (@labels.is_a? Array)
    raise ArgumentError.new("Your Die needs to be an Array of Strings")

  end

  def sides
    puts "This die has #{@labels.length} sides"
    return @labels.length
  end
end

  def roll
      puts "Your die landed on #{@labels.sample}!"
      return @labels.sample

  end
end

new_die = Die.new(["Bitter", "Roots", "Make", "Better", "Beers"])

new_die.sides
new_die.roll





# Reflection

=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
  The biggest difference was in the implementation of the random roller to the array. I didn't really need to change that much logic, but it was a bit tricky getting everything working the way I wanted. I originally had an each method but it wasn't working and it seemed like overkill, so I think the solution I came up with is a lot neater.
What does this exercise teach you about making code that is easily changeable or modifiable?
  The easier it is to change code that you may need to reuse, the less work you'll make for yourself down the line. That means simple solutions, few methods that rely on one another to succeed, and if things do get complicated, comments explaining why everything is necessary or what relies on it.
What new methods did you learn when working on this challenge, if any?
When refactoring, I used the .sample method, which did exactly what I wanted it to. I was a little dissappointed, because I thought my solution was pretty simple already, but I'm not going to argue with a one-word solution to the problem.
What concepts about classes were you able to solidify in this challenge?
  I found it a lot easier to create and instance the class this time, since I had some experience. One thing I still don't really understand is why I need the second end after sides. I feel like the method should be complete, so  I don't really get why I need another end.
=end
