# Your Names
# 1) Menuka Samaranayake @menuka
# 2) Charlie Bliss @charliebliss

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  #hash of ingredients and serving size
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  # Input Validation


  if library.has_key?(item_to_make) == false
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end


  #Ingredient Cost
  serving_size = library.values_at(item_to_make)[0]
  #Ingredients Leftover
  remaining_ingredients = num_of_ingredients % serving_size


  case remaining_ingredients
    #Calculates Created Recipes No Leftover
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"

    #Caluculates Created Recipes With Leftover

  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

=begin


Refactor input validation

Change serving size variable name

Refactor ingredient cost calculator

Refactor Created recipes calculator

Natively print output

Add Leftover Ingredient Suggestion


=end


#  Reflection


=begin
leftover_ingredients = 13
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

leftovers = ["pie", "cake", "cookie"]
new_foods= {}
leftovers.each do |food|
  new_foods[food] = leftover_ingredients / library[food]
  leftover_ingredients %= library[food]

end
p new_foods




#   library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  # library.each do |food|
#   unless library[item_to_make] != nil
  #     error_counter += -1
  #   end
  # end
# raise error if error_counter > 0

=begin
  error_counter = 3

  library.each do |food|
    if library[food] != library[item_to_make]
      error_counter += -1
    end
  end
=end