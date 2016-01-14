#Attr Methods

# I worked on this challenge [by myself]

# I spent [1] hours on this challenge.

# Pseudocode

# Input: 2 classes, one with my name, one calling the data from the first class
# Output: a sentence that says "Hello Charlie! How wonderful to see you."
# Steps:
=begin
 Create a NamData class
 use attr_reader to make name accessible outside of the Class
 set the name attribute to "Charlie"
  END

  Create a Greetings Class
  set NameData information to a new instance variable

  Define a method that will print my output when called
  END

  create new instance of Greetings and call print method
  END


=end

class NameData
  attr_accessor :name
  def name
    return "Charlie"
  end
end


class Greetings
  def initialize
    @name_data = NameData.new
  end

  def print_name
    puts "Hello, #{@name_data.name}! How wonderful to see you!"
  end
end

  greet = Greetings.new

  greet.print_name

# Reflection

=begin
Release 1:
What are these methods doing?
The methods are setting and printing profile information as a class, then modifying that information and printing it again.
How are they modifying or returning the value of instance variables?
  All of the instance varriables are being set to the value of the input of a new method. This is also how they are all being accessed. Because these values are just being returned by the methods, they aren't all printed out until the end of the release.

Release 2:
What changed between the last release and this release?
This release added the attr_reader for age only. They what_is_age method has also been eliminated.
What was replaced?
  The what_is_age method has been replaced by a class method called #.age.
Is this code simpler than the last?
  Not really, but only because now the methods are split into two different types rather than all grouped together. If they had done this for all of the attributes, it would be simpler.

What changed between the last release and this release?
  Age has been given the attr_writer as well as reader.
What was replaced?
  The change_my_age method has been eliminated, replaced by a class method created by assigning age the arrt_writer attribute.
Is this code simpler than the last?
  It is getting there, though if all of the methods were a uniform format it would be much simpler.

What is a reader method?
A reader method allows a class variable to be read, but not changed, from outside of the class itself.

What is a writer method?
A writer method allows a class variable to be changed from outside of the class.
What do the attr methods do for you?
  They basically create methods for reading and writing data within a class automatically. That way, you don't need to define classes for setting and manipulating data manually.
Should you always use an accessor to cover your bases? Why or why not?
  If you don't want your class data modified outside of the class, then you may not want to use a writer method. If you want your class to be secure, then it doesn't need to be accessed or written outside of the class.
What is confusing to you about these methods?
  I seemed to be able to access the variables from outside of the method without using the attr methods, so I may have written more than I needed to.
=end
