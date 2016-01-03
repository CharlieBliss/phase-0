# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself].

# 0. total Pseudocode
# make sure all pseudocode is commented out!
=begin


# Input: The input will be an array of numbers
# Output: The output will be the sum of all numbers in the array.
# Steps to solve the problem.
I need to iterate through every number in the array and dump them additively into a variable with the value '0'. For each number in the array, that number, plus every number before it, will be equal to this variable.
=end
# 1. total initial solution
def total(array)
  y = 0
  array.each do |x|
    y += x
  end
  return y
end




# 3. total refactored solution
def total(array)
  array.reduce(:+)
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
=begin
# Input: The input will be an array of separate strings.
# Output: The output will be a single string connecting all of the input strings.
# Steps to solve the problem.
I can iterate through every string in the array, adding each one to a variable containing an empty string. For each string in the array, that string, plus all the strings before it, will make the variable into a single string.


# 5. sentence_maker initial solution
=end
def sentence_maker(x)
  x.to_s
  y=''
  x.each do |z|
    y += z + ' '
  end
  return y.capitalize + "."
end


# 6. sentence_maker refactored solution

def sentence_maker(x)
  x.join(" ").capitalize + "."
end

