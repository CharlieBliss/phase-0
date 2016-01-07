# Numbers to Commas Solo Challenge

# I spent [3] hours on this challenge.

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
If array is fewer than 4 characters, return it as a string
if array is more than 4 characters, perform a function on it:

  for every three characters in the array, split the array at that point
  join the split array using commas.

reverse the converted string again


=end

# 1. Initial Solution
def separate_comma(int)
  string = int.to_s.reverse
  split = string.split(//)
  length = split.length
  final = []

  if length < 4
    return int.to_s
  elsif length >=4
    split.each_slice(3){|p| final << p.join}
  end
    return final.join(",").reverse
end

puts separate_comma(59897978465659487)

# 2. Refactored Solution

def format_number(int)
  int.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
end


# 3. Reflection

=begin

What was your process for breaking the problem down? What different approaches did you consider?

  I basically stuck with the same methods throughout my process.
  It took me an awfully long time and, to be honest, there were probably points where I should have reset the method entirely, but I kept getting so close that I didn't want to back down.
  The last 5-10% of the method ended up challenging me more than the rest put together.The only times I really tried something different from my final solution were when I was trying to figure out how to convert all of the strings I was getting returned into one string separated by commas.
  I had it converted into groups of three, but every time I tried to get an output, I would find there was always one more step. It wasn't until I thought of making a variable outside of the each_slice method that I was able to solve it.



Was your pseudocode effective in helping you build a successful initial solution?

  Honestly, not really. The problems I had were never with figuring out how I was going to solve it, it was figuring out how to tell the computer what I already knew. Maybe if I knew more about what Ruby was capable of, psuedocode would have been more helpful.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
  I learned about regular expressions, though my understanding of them is extremely limited. I barely worked my way through understanding what I was looking at, and even now, it's an entirely different method of adding the commas. Rather than pulling apart the string and joing it with the commas, it just looks at the string, finds every three places, and puts down a comma.
  It still uses the reverse method, so I wonder if there's an easier way.

How did you initially iterate through the data structure?
  Initially, I iterated using each slice. Rather than iterating over each variable, I thought it would be better to take chunks, since that's what I needed to work with anyway.
Do you feel your refactored solution is more readable than your initial solution? Why?
  Yes and no. If you're very familiar with gsub and regex, it's probably easier. It's defintiely easier for the computer to read. For me, though, I'd have a much easier time understanding the verbose version I originally composed.
=end