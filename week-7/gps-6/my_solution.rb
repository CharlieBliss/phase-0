STATE_DATA = {
  "Alabama" => {population_density: 94.65, population: 4822023},
  "Alaska" => {population_density: 1.1111, population: 731449},
  "Arizona" => {population_density: 57.05, population: 6553255},
  "Arkansas" => {population_density: 56.43, population: 2949131},
  "California" => {population_density: 244.2, population: 38041430},
  "Colorado" => {population_density: 49.33, population: 5187582},
  "Connecticut" => {population_density: 741.4, population: 3590347},
  "Delaware" => {population_density: 470.7, population: 917092},
  "Florida" => {population_density: 360.2, population: 19317568},
  "Georgia" => {population_density: 172.5, population: 9919945},
  "Hawaii" => {population_density: 216.8, population: 1392313},
  "Idaho" => {population_density: 19.15, population: 1595728},
  "Illinois" => {population_density: 231.9, population: 12875255},
  "Indiana" => {population_density: 182.5, population: 6537334},
  "Iowa" => {population_density: 54.81, population: 3074186},
  "Kansas" => {population_density: 35.09, population: 2885905},
  "Kentucky" => {population_density: 110.0, population: 4380415},
  "Louisiana" => {population_density: 105.0, population: 4601893},
  "Maine" => {population_density: 43.04, population: 1329192},
  "Maryland" => {population_density: 606.2, population: 5884563},
  "Massachusetts" => {population_density: 852.1, population: 6646144},
  "Michigan" => {population_density: 174.8, population: 9883360},
  "Minnesota" => {population_density: 67.14, population: 5379139},
  "Mississippi" => {population_density: 63.50, population: 2984926},
  "Missouri" => {population_density: 87.26, population: 6021988},
  "Montana" => {population_density: 6.86, population: 1005141},
  "Nebraska" => {population_density: 23.97, population: 1855525},
  "Nevada" => {population_density: 24.8, population: 2758931},
  "New Hampshire" => {population_density: 147.0, population: 1320718},
  "New Jersey" => {population_density: 1205, population: 8864590},
  "New Mexico" => {population_density: 17.16, population: 2085538},
  "New York" => {population_density: 415.3, population: 19570261},
  "North Carolina" => {population_density: 200.6, population: 9752073},
  "North Dakota" => {population_density: 9.92, population: 699628},
  "Ohio" => {population_density: 282.5, population: 11544225},
  "Oklahoma" => {population_density: 55.22, population: 3814820},
  "Oregon" => {population_density: 40.33, population: 3899353},
  "Pennsylvania" => {population_density: 285.3, population: 12763536},
  "Rhode Island" => {population_density: 1016, population: 1050292},
  "South Carolina" => {population_density: 157.1, population: 4723723},
  "South Dakota" => {population_density: 10.86, population: 833354},
  "Tennessee" => {population_density: 156.6, population: 6456243},
  "Texas" => {population_density: 98.07, population: 26059203},
  "Utah" => {population_density: 34.3, population: 2855287},
  "Vermont" => {population_density: 67.73, population: 626011},
  "Virginia" => {population_density: 207.3, population: 8185867},
  "Washington" => {population_density: 102.6, population: 6724540},
  "Washington,D.C."=> {population_density: 10357, population: 632323},
  "West Virginia" => {population_density: 77.06, population: 1855413},
  "Wisconsin" => {population_density: 105.2, population: 5726398},
  "Wyoming" => {population_density: 5.851, population: 576412}
}

class VirusPredictor

#   set the values of the instance variables state, population and pop density

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


  #run the two other methods, predicted_deaths and speed_of_spread on these previously defined isntance variables
  def virus_effects
    puts "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  private


  # based on population density, chooses an equation to calculate number of deaths based on population and returns a float(number_of_deaths).
  #   Prints a string using that data

  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
    return case @population_density
      when 0..50 then (@population * 0.05).floor
      when 150..200 then (@population * 0.3).floor
      when 100..150 then (@population * 0.2).floor
      when 50..100 then (@population * 0.1).floor
      else (@population *0.4).floor
    end
  end


    # if @population_density >= 200
    #   (@population * 0.4).floor
    # elsif @population_density >= 150
    #   (@population * 0.3).floor
    # elsif @population_density >= 100
    #   (@population * 0.2).floor
    # elsif @population_density >= 50
    #   (@population * 0.1).floor
    # else
    #   (@population * 0.05).floor
    # end

#   based on population density, add a certain number to the variable speed
#   print a string referring to the speed of travel.

  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    return case @population_density
      when 0..50 then 2.5
      when 50..100 then 2
      when 100..150 then 1.5
      when 150..200 then 1
      else 0.5
    end
  end

#     speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end



end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

# VirusPredictor takes 3 arguments
# State: String
# pop_Den: float
# pop:


STATE_DATA.each do |state, data|
  VirusPredictor.new(state, data[:population_density], data[:population]).virus_effects
end

=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
Besides the matter of structure, the first hashes keys are strings, while the inner hash keys are symbols. Symbol keys are generally preferable, since symbols are immutable, so if you need to reference them many times, the symbol will always be stored as the same entity. The state names work better as strings, since the exact structure of the words(i.e. spaces, punctuation, capitalization) is important to displaying them in the code and in the output.
What does require_relative do? How is it different from require?
  Require relative basically puts in a different file as a single line of code and allows the file it appears in to access any information from that file as if they were joined. Here it gives the file "my_solution.rb" access to the hash in "state_data.rb". require does the same thing but doesn't require a relative path, which usually means it is accessing a different gem or series of methods that aren't completely native to Ruby.
What are some ways to iterate through a hash?
You can use each, each_key, each_value, and map and select can also be used to adjust the hash.
When refactoring virus_effects, what stood out to you about the variables, if anything?
  Though the method was requiring instance variables as arguments, it could already access the instance variables since it was an instance method. It basically meant nothing to access those values as arguments. We could get rid of them entirely and lose nothing.
What concept did you most solidify in this challenge?
  How and when instance variables were updates and how to use them in instance methods was a little confusing to me before, but I feel like I have a much stronger grasp on it now.
=end