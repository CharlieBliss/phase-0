# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: We would want to create a hash that used each item and its respective quantity to be represented by each key value pair.
#   [fill in any steps here]
# Separate strings into individual item
# Assign each of the elements to a key in the hash.
# Set a default value(0)
#   set default quantity
#   print the list to the console [can you use one of your other methods here?]
# output: Grocery hash
# INITIAL SOLUTION:
grocery_list="carrots apples cereal pizza"



def list_creator(grocery_list)
  grocery=Hash.new
  grocery_list.split(" ").each {|item| grocery[item]=0}
  return grocery
end

grocery_initial = list_creator(grocery_list)




Method to add an item to a list
input: item name and optional quantity
steps:
Take the original hash and a new key/value pair
Insert the new Key/value pair into the original hash
output:
updated hash with new key/value pairs

def list_adder(grocery_hash, new_grocery, new_grocery_value)
  grocery_hash[new_grocery] = new_grocery_value
  return grocery_hash
end

list_adder(grocery_initial,"eggs",2)





Method to remove an item from the list
input:a hash and the name of an item
steps:Input of an item for specific hash and remove said item
output:A hash with desired item removed

def list_remover(grocery_hash,grocery_item)
  grocery_hash.delete(grocery_item)
  return grocery_hash
end

list_remover(grocery_initial, "apples")


# Method to update the quantity of an item
# input: original hash,grocery item ,quantity of that item
# steps:
# Take the original hash and grocery item input
# update the value of the key/value pair assigned to that grocery item
# return the updated hash
# output:the updated hash

def list_updater(grocery_hash, grocery_item, grocery_quantity)
  grocery_hash[grocery_item] = grocery_quantity
  return grocery_hash
end
list_updater(grocery_initial, "carrots", 19)




# Method to print a list and make it look pretty
# input: Updated Hash
# steps:For each element of the hash we can print "You have __  ___"
# output: A string including updated values in a pretty format

def pretty_maker(grocery_hash)
  grocery_hash.each {|item,quantity| puts "You have #{quantity} #{item}" }
end

=begin
What did you learn about pseudocode from working on this challenge?
  I mostly reinforced what I already knew about psuedocode--that it should be concise, clear, but still specific.
What are the tradeoffs of using Arrays and Hashes for this challenge?
  Arrays are probably more flexible in how you can use them, but some information just doesn't translate well to an array. Sometimes, the pairing of data is the only thing that you're really interested in, so only a hash will work for those times.
What does a method return?
  A method will return either the last result of a calculation in the method or whatever you explicitly tell it to using the return command.
What kind of things can you pass into methods as arguments?
  You can pass pretty much any object as an argument into a method. Stings, integers, floats, arrays, hashes are all valid arguments.
How can you pass information between methods?
  By creating a variable outside of a method and using methods to update it, information in the variable will be updated as its passed through all of the methods.
What concepts were solidified in this challenge, and what concepts are still confusing?
  I have a much better understanding of flow control and updating information stored in variables, though I have a lot more to learn on that topic, since I sometimes can't quite figure out why information isn't returning or updating properly.
=end