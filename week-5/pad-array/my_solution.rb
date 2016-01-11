# Pad an Array

# I worked on this challenge [by myself, with: Linda Oanh Ho ]

# I spent [1.5] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode
=begin
# What is the input?
The input will be an array, an integer, and any object used for padding the array

# What is the output? (i.e. What should the code return?)
an array with as many elements as the integer states, padded by the object used for padding.

# What are the steps needed to solve the problem?
DESTRUCTIVE PAD

find the length of the array
compare the length to the minimum size
IF the length of the array is greater than or equal to min size, return the array

ELSE return the padded array
UNTIL the array meets the length requirments, insert padding at the end

Non-destructive

=end

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  length = array.length
  if length >= min_size
    return array
  else
  until array.length == min_size
    return array.push(value = nil)
    end
  end
end


def pad(array, min_size, value = nil) #non-destructive
  new_array = array.dup
  length = new_array.length
    if length >= min_size
      return new_array
    else
    until new_array.length == min_size
      new_array.push(value)
    end
  end
  return new_array
end

print pad([3,3,5,2,21],0)


#Refactored Solution:

#Destructive

def pad_refact!(array, min_size, value = nil)
  array.fill(value, array.length..min_size)
end

#Non-Destructive

def pad_refact(array, min_size, value = nil)
  new_array = array.dup
  new_array.fill(value, new_array.length..min_size)
end


print pad_refact([3,3,4,5,6,3,2],20,"Ruby")

=begin

Were you successful in breaking the problem down into small steps?
Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
We were pretty successful at breaking the problem down into steps,though maybe we could have been more thorough and specific. Sometimes, we felt like we would rather try a couple of solutions before committing to something, and working from psuedocode doesn't always allow for that.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
  We ran the solutions a few different ways, encountering errors as we built the code. The one we struggled with most with was making sure that the non-destructive pad was, in fact, non-destructive. It turned out we had one leftover variable that was causing the method to return a destructive solution if and only if the length of the array was above the minimum size. It was frustrating, but very satisfying when we figured it out.
When you refactored, did you find any existing methods in Ruby to clean up your code?
Yes, we were able to get the solution down to a single line, or, in the case of the non-destructive method, two. The .fill method basically did exactly what we needed, so it was just a matter of finding out how we could get it to fill the right number of spaces. We were able to work through it fairly quickly once we discovered the method.
How readable is your solution? Did you and your pair choose descriptive variable names?
Our variable names were fairly descriptive, but a little generic. It was difficult to come up with specific variable names when the problem was so abstract. I think both of our solutions are pretty readable and straightforward.
What is the difference between destructive and non-destructive methods in your own words?
Destructive methods edit elements of the information you pass through them, so that when you call them again, they return a different value than what they began with. A non-destructive method creates a copy of that information so that the original is never altered. When you call the original, it will return with the original information.
=end