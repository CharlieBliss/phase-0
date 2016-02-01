#

def super_fizbuzz(arr)
  arr.map!{ |x|
    if x % 3 == 0 && x % 5 == 0
      x = "FIZZBUZZ"
    elsif x % 5 == 0
      x = "Buzz"
    elsif x % 3 == 0
      x = "Fizz"
    else x
    end
  }
end

super_fizbuzz([1,2,3,4,5,6,7,8,9,10,15])

def super_switch(arr)
  arr.map!{|x|
    case
    when x % 3 == 0 && x % 5 == 0 then x ="Fizzbuzz"
    when  x % 3 == 0 then x = "Fizz"
    when x % 5 == 0 then x = "Buzz"
    else x
    end

 }
end


super_switch([1,2,3,4,5,6,7,8,9,10,15])



# Drawer Debugger

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Original Code

class Drawer

attr_reader :contents

# Are there any more methods needed in this class?

def initialize
@contents = []
@open = true
end

def open
@open = true
end

def close
@open = false
end

def add_item(item)
@contents << item
end

def remove_item(item = @contents.pop) #what is `#pop` doing?
@contents.delete(item)
end

def dump
@contents = []  # what should this method return?
puts "Your drawer is empty."
end

def view_contents
puts "The drawer contains:"
@contents.each {|silverware| puts "- " + silverware.type }
end

end
class Silverware
attr_reader :type
attr_reader :clean

# Are there any more methods needed in this class?

def initialize(type, clean = true)
@type = type
@clean = clean
end

def eat
puts "eating with the #{type}"
@clean = false
end

def clean_silverware
  puts "Cleaning the #{type}"
  @clean = true
end

def clean?
  if @clean == true
    return true
  else return false
  end
end
end



# DO NOT MODIFY THE DRIVER CODE UNLESS DIRECTED TO DO SO
knife1 = Silverware.new("knife")


silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork"))
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware
raise Exception.new("Your silverware is not actually clean!") unless removed_knife.clean_silverware == true

silverware_drawer.view_contents
silverware_drawer.dump
raise Exception.new("Your drawer is not actually empty") unless silverware_drawer.contents.empty?
spoon = Silverware.new("spoon")
silverware_drawer.add_item(spoon)
silverware_drawer.view_contents

# What will you need here in order to remove a spoon? You may modify the driver code for this error.

raise Exception.new("You don't have a spoon to remove") unless silverware_drawer.contents.include?(spoon)
silverware_drawer.remove_item(spoon) #What is happening when you run this the first time?
spoon.eat
puts spoon.clean #=> this should be false

# DRIVER TESTS GO BELOW THIS LINE


# What concepts did you review or learn in this challenge?
  # I wasn't totally comfortable with classes or with case-switches so I decided to work on those for this challenge.
# What is still confusing to you about Ruby?
  # Some things about flow control and classes are still a little fuzzy for me. The debugging exercise helped with understanding when things have to be defined in classes.
# What are you going to study to get more prepared for Phase 1?
# I'm still going to go over a lot of the class stuff, but I think I also need to just do some exercises to keep me sharp. Even when I had done JS for a week, I already lost some of what I'd learned in Ruby.