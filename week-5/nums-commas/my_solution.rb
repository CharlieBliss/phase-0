# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
#The input is a positive integer.

# What is the output? (i.e. What should the code return?)

# The output should be the same number as the integer returned as a string with commas separating out thousands.
# What are the steps needed to solve the problem?
=begin
Change integer input to string
Change string to array of characters
Iterate through the array of characters
If a character is
reverse string.


=end

# 1. Initial Solution
def separate_comma(int)
  string = int.to_s.chars.to_a
  string.each do |x|
    if x == string[3]
      string.insert(3,",")
    end


  end


end

puts separate_comma(1000)

# 2. Refactored Solution




# 3. Reflection