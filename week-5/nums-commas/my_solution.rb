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


=end

# 1. Initial Solution
def separate_comma(int)
  string = int.to_s.reverse
  split = string.split(//)
  length = split.length

  if length < 4
    return int.to_s
  elsif length >=4
    split.each_slice(3) {|slice| p slice.join("").length}
  end
end

separate_comma(1234567891)

# 2. Refactored Solution

def format_number(number)
  number.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
end


# 3. Reflection