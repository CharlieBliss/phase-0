# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]



# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]


number_array.map! { |element|
  if element.kind_of?(Array)
    element.map!{|inner| inner += 5}
  else
    element += 5
  end
  }
p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! { |element|
  if element.kind_of?(Array)
    element.map!{|inner| if inner.kind_of?(Array)
      inner.map! { |innerer|
        innerer = innerer + "ly"}
      else
      inner += "ly"
      end }
  else
    element += "ly"
  end
  }
p startup_names


=begin

What are some general rules you can apply to nested arrays?
Nested arrays operate in much the same way as regular arrays, in that you can call them by position and iterate through them normally. Knowing how to find the index you're looking for is probably the most important thing to remember about nested arrays. It helps me to remember that (array[index]) is itself an array, so array[index][index] is just finding an index of that array, and so on.
What are some ways you can iterate over nested arrays?
  The method we used to iterate over the nested arrays was to essentially nest our methods as well. We called a method, created an if statement to see if the element was an array, and if it was, we iterated over that as well. This worked fine for the 2d array, but for n-dimensional arrays, it seemed excessively bloated. It's also possible to :flatten arrays and iterate over them that way, but you lose the original structure of the array.
Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
  We used methods we were already familiar with, in this case, map! since it was a destructive way to create a new array using the same format and structure that we started with. We looked around for some more helpful methods, but were unable to come up with anything more useful than map!


=end