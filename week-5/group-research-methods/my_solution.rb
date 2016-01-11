# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
array= [3,4,5,9]
def my_array_sorting_method(source)
  source.sort { |a, b| a.to_s <=> b.to_s }
end
puts array
puts "stop"
puts my_array_sorting_method(array)
def my_hash_sorting_method(source)
  source.sort_by{ |k, v| v}
end

=begin

Identify and describe the Ruby methods you implemented
  The important methods I used were sort and sort_by. Sort simply takes all of the elements in an array and sorts them alphabetically or numberically, or, in this case, both. I also used the to_s method here in order to get numbers and strings sorted together. Orignally I had the to_s method running outside of my sort, but I was returning the integers as strings, so when I put it inside, it returned everything the way it was supposed to, only sorting them all as strings. The sort_by method sorts by assigning values to a list and then sorting them by that value. In this case, we were using a hash, so the values were already there. I iterate through the keys and values and sort it by the values, which returns a numerically sorted list of those values.
Teach your accountability group how to use the methods
  Sort is pretty simple, when you call the method sort, you pass it information about how you want the input sorted. In this case, it compares the values using the spaceship operator to see which is higher. In the case of strings, that simply means alphabetically, going 0-Z. This puts the values in proper alphabetical order using the same data type they started with. For the hash sort, sort_by is very similar, but since we're operating with pairs of data types and don't want to sort by the key, we have to tell it for each k(ey) and v(alue), SORT the hash BY the value. One thing you can see that I did was use sort and sort_by, rather than sort! and sort_by! This is because the ! method is destructive, so it would replace the original list with the sorted list, rather than refer to a copy of the list like I'm doing now.

Share any tricks you used to find and decipher the Ruby Docs
  I pretty much knew what I wanted to use, since I've used these methods for a few challenges already this week. When I went through today, I found that the docs really aren't that clear, especially for sort_by, so seeing a few examples of people using it on StackOverflow definitely helped me get a sense of proper usage. People will often go way out of their way to help explain a concept, so never underestimate the amount of people that have been through whatever problem you're facing and asked about it online.


=end


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#