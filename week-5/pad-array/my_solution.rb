# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


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