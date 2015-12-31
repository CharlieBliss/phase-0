# Count Between

# I worked on this challenge [by myself].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers,lower_bound,upper_bound)
r = Range.new(lower_bound,upper_bound)
new_array=[]
list_of_integers.each do |x|
  if r.include?(x)
    new_array.push(x)
  end

end

return new_array.length
end


count_between([1,2,3,4,5,6,7,8,9],5,9)