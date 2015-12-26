def full_name_greeting

  puts "What's your first name"
  first_name = gets.chomp.capitalize

  puts "What about your middle name?"

  middle_initial = gets.chomp.capitalize

  puts "And your last name?"

  last_name = gets.chomp.capitalize

  puts "Hello, #{first_name} #{middle_initial[0]}. #{last_name}"

end

full_name_greeting

def favorite_number_replacer

    puts "What's your favorite number?"

    old_number= gets.chomp

    new_number = old_number.to_i + 1


    puts "Might I suggest #{new_number} as a clearly superior suggestion?"

end

favorite_number_replacer



