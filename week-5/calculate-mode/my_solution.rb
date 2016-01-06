# Calculate the mode Pairing Challenge

# I worked on this challenge with Charlie Bliss.

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode
=begin
# What is the input?
An array of numbers or strings.
# What is the output?
An Array with the most frequent element or elements.
# What are the steps needed to solve the problem?

take the input Array
assign a frequency to each element in the Array.
Create a hash of key/value pairs where the key is element in the array, and the value is the frequency.
  Create a new hash.
  Assign the array elements to be equal to the hash keys.
  Add a value to each of the keys, which will be equal to the frequency it appears in the array.
Find the element(s) that is the most frequent
  Iterate over the hash, determine the highest value(s)
return those element(s)
=end


# 1. Initial Solution
def mode(array)
  mode_hash=Hash.new

  array.each do |x|
    mode_hash[x] = array.count(x)
  end


  mode_hash.each {|key, value| return key if value == mode_hash.values.max}


end

puts mode([1,1,2,2,3,3,5,5,5,4,4,4])

# 3. Refactored Solution


# puts (1..10).find_all{|x| x % 3 == 0}
