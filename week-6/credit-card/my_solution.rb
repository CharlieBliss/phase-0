# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 single-digit numbers
# Output: True/False
# Steps:

=begin
Create a credit card Class
  initialize the class with 1 argument, a number
raise argerror if number of digits doesn't equal 16

Create a check_card method to break up the numbers into an array of single digits
reverse the array
double every second digit
break that array into another array of single digits
sum the array
IF the value is divisible by 10
return TRUE
ELSE
return FALSE

END



=end


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits
=begin
class CreditCard
  def initialize(number)
    @number = number
    raise ArgumentError.new("Wrong number of digits") if @number.to_s.length != 16
  end
  def check_card
    num_array = @number.to_s.split(//).reverse

    num_array.map! do |element|
      element.to_i
    end

    num_array.each_index do |i|
      if i % 2 != 0
        num_array[i] *= 2
      end
    end

    new_array = num_array.join.split(//)
    new_array.map! do |element|
      element.to_i
    end
    final_count = new_array.inject(:+)

    if final_count % 10 == 0
      return true
    else
      return false
    end

  end
end
=end
# Refactored Solution

class CreditCard
  def initialize(number)
    @credit_card = number
    raise ArgumentError.new("Wrong number of digits") if @credit_card.to_s.length != 16
  end

  def to_integer(array)
     array.map! {|element|
      element.to_i}
    end


  def check_card
    num_array = @credit_card.to_s.split(//).reverse

    to_integer(num_array)

    num_array.each_index{|i|
      if i % 2 != 0
        num_array[i] *= 2 end
      }

    doubled_array = num_array.join.split(//)

    to_integer(doubled_array)

    final_count = doubled_array.inject(:+)

    if final_count % 10 == 0
      return true
    else
      return false
    end
  end
end

# raise ArgumentError.new("Wrong number of digits") if @number.length != 16

# Reflection