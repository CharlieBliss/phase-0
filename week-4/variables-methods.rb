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


=begin
How do you define a local variable?
  A local variable is any information stored within the scope of a ruby file that can be recalled with a trigger word. Much like in algebra, a variable simply holds data that can be manipulated or updated by the information that is passed to it by a method or by a user.

How do you define a method?
  A method is a local variable that stores a function rather than information. It can be passed information known as arguments that have some action taken upon them within the method. This can be as simple as printing those arguments to the console, but typically will have more complex commands passed to them. Once the method is called, ruby will attempt to pass the arguments through the directions of the method and return/print whatever outcome you've defined.
What is the difference between a local variable and a method?
  A local variable is broader and more flexible than a method, though a method is technically stored within a local variable. A method necessarily contains a call to action, while a local variable stores any information(including a function) to be recalled at another time.
How do you run a ruby program from the command line?
  Ruby programs can be run by navigating to the correct directory and typing ruby file_name.rb. This runs the program directly inside the terminal.
How do you run an RSpec file from the command line?
  RSpec files are run in much the same way, replacing ruby with rspec. This command tests the specifications of the ruby file inside the terminal, returning errors or exceptions.
What was confusing about this material? What made sense?
  I didn't struggle very much with this material. Most of the problems I had came from typos or mistaken object types, usually between strings and ints. I had fun figuring out how to tweak the programs a little, like making the middle name in the name generator a middle initial instead.
=end