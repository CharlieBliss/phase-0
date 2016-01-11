# Calculate the mode Pairing Challenge

# I worked on this challenge with Jonathan Silvestri

# I spent [2] hours on this challenge.

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

nums = [1,1,2,2,3,3,5,5,5,4,4,4]
# 1. Initial Solution
def mode(array)
  mode_hash=Hash.new

  array.each do |x|
    mode_hash[x] = array.count(x)
  end


  mode_hash.each {|key, value| return key if value == mode_hash.values.max}


end

puts mode(nums)

# 3. Refactored Solution

def mode_ref(array)
  array.max_by { |i| array.count(i) }
end

puts mode_ref(nums)



# puts (1..10).find_all{|x| x % 3 == 0}


=begin

Which data structure did you and your pair decide to implement and why?

For our initial solution, we decided to sort the data into a hash, since we thought a value counting each item would make more sense to sort than the values on their own. The solution ended up working, but was a little unwieldy. In the refactored solution, we were able to iterate through the array without changing the data structure and still come up with the same result.
Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

I assume this question is referring to section 5.2, but I actually did this challenge first. That said, we found this easier to break down into psuedocode because we had a better idea of how we wanted to solve it going in.
What issues/successes did you run into when translating your pseudocode to code?

As always, my biggest issue with creating psuedocode is in my limited knowlege of the capabilities of Ruby. I like to try a few things out, so working right from psuedocode can be sort of hard. For this exercise, it wasn't as difficult, since we had a good idea of how to solve the problem before we even began, so breaking down the psuedocode and implementing it went very smoothly.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
We mainly used the each method, first using it to create a hash key for every item in the array, then a value for how many times that item appears. We then used each again to look through the hash and return only the key with the highest value. In the refactor, we simply used max_by, which does the same thing without converting the data to a hash. It just returns the value that returns the highest count value.


end
