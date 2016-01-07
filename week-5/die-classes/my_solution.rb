# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution

class Die
  def initialize(sides)
    #This is an instance variable
    @sides = sides
    unless @sides >= 1
    raise ArgumentError.new("Your Die needs sides.")

  end

  def sides
    return @sides
  end
end


  def roll
    return 1 + rand(@sides)
  end
end

die = Die.new(3)

die.sides


# 3. Refactored Solution


class Die
  def initialize(sides)
    #This is an instance variable
    @sides = sides
    unless @sides >= 1 && @sides.is_a?(Integer)
    raise ArgumentError.new("Your Die needs sides.")

  end

  def sides
    puts "This die has #{@sides} sides"
    return @sides
  end

  def roll(times)
    rolls = (1 + rand(@sides)) * times
    puts "You rolled a #{rolls}!"
    return rolls
  end
  end
end

eight_sided = Die.new(8)

eight_sided.roll(4)




# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
  An argumentError is an error message that runs instead of attempting to run the program with incorrect input. You might use one if your program requires a certain input to make any sense.For instance, the die program requires the sides variable to be an integer greater than 0 or else the methods you call on it won't make any sense.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

I hadn't seen the argument error methods before, so I initially had them in the wrong place(under sides rather than initialize.) I didn't realize until I tried the rspec that it actually wasn't working. Once I figured that out, it was pretty easy. I also hadn't really used rand() in a while, but I was able to pick that up pretty quickly as well.


What is a Ruby class?

A class is like an instruction manual telling the computer how to treat a certain assortment of objects. All ruby objects fall under some kind of class. Methods, strings, integers, arrays, hashes, and even classes are all classes. A class is like the Platonic Ideal of an object. It is the true essense of the object, upon which all objects are based.

Why would you use a Ruby class?
You would generally use a Ruby class in order to simplify and streamline repeated calls to action that you place on specific types of object. For instance, if you find yourself frequently talking about pokemon, you might want to make a class called pokemon which stores the shared traits of all pokemon(e.g. Number, type, evolutions) All you have to do then is create a new object in the pokemon class and fill in the specific information for those types. That way, rather than calling for methods on individual assortments of information, you can call a method like type of Cloyster and have it return Ice/Water.

What is the difference between a local variable and an instance variable?
A local variable works only inside the method in which it is declared, but an instance variable can be used within the scope of the object its class refers to.

Where can an instance variable be used?
An instance variable can be used in a method relating to an object while defining a class. They can then be accessed by those objects defined by the class in methods or as information.
=end
