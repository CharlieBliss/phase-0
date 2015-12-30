# Analyze the Errors

# I worked on this challenge [by myself]
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
  #while true
   # puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#  The error is in errors.rb
# 2. What is the line number where the error occurs?
# The error is stated to be on line 170, though the real error occurs on line 17, where there should be a second end command.
# 3. What is the type of error message?
# This is a sytax error.
# 4. What additional information does the interpreter provide about this type of error?
# The interpreted is expecting the keyword 'end,' no such keyword is written.
# 5. Where is the error in the code?
# The error is after the end on line 16.
# 6. Why did the interpreter give you this error?
# The while loop needs the end keyword, as does the method, so the method looks over the entire document for its end, but never finds it.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
#   The error is in line 35.
# 2. What is the type of error message?
#   This is a NameError.
# 3. What additional information does the interpreter provide about this type of error?
#  The erorr message refers to an undefined local variable, which is all this line of code is.
# 4. Where is the error in the code?
# The whole code is an error, since all it is is an undefined variable.
# 5. Why did the interpreter give you this error?
# Since the local variable "south_park" is never defined, the compiler has no way or reason to interpret it.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
#  The error is on line 50
# 2. What is the type of error message?
#   this is a NoMethod Error
# 3. What additional information does the interpreter provide about this type of error?
# The error log states that there is no method defined by the name 'cartman'
# 4. Where is the error in the code?
# "cartman" returns an error, since no such method has been defined.
# 5. Why did the interpreter give you this error?
# This error occured because the interpreter attempted to run a method that hadn't yet been defined.

# --- error -------------------------------------------------------

#def cartmans_phrase
 # puts "I'm not fat; I'm big-boned!"#
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#   The error occurs on line 69.
# 2. What is the type of error message?
# This is an ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# It says there are the wrong number of arguments. It also states how many arguments are being passed and how many should be(0/1).
# 4. Where is the error in the code?
# The 'I hate Kyle' argument is causing the error.
# 5. Why did the interpreter give you this error?
# The method should be passed 0 arguments, it is instead being given 1.

# --- error -------------------------------------------------------
#
#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
#  Error occurs on line 84
# 2. What is the type of error message?
#This is another argument error.
# 3. What additional information does the interpreter provide about this type of error?
#  It states that the wrong number of arguments are being passed, and says I should have 1, not 0.
# 4. Where is the error in the code?
# The error occurs after 'cartman_says'
# 5. Why did the interpreter give you this error?
# There is no argument after cartman_says, and there should be one, since the method is designed to recieve one.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
  #puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# The error occurs on 109.
# 2. What is the type of error message?
# This is yet another argument error.
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments being passed, this time it should be 2, but it's one.
# 4. Where is the error in the code?
# The error occurs after 'cartmans_lie'
# 5. Why did the interpreter give you this error?
# Becuase only 1 argument is being given to the method when it requires 2

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# The error is on line 124
# 2. What is the type of error message?
# This is a TypeError
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says a string can't be coerced into a Fixnum.
# 4. Where is the error in the code?
# The error occurs when the interpreter multiplies the string by 5.
# 5. Why did the interpreter give you this error?
# Because strings can't be multiplied by integers or floats without being part of a printed message.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# The error occurs on line 139
# 2. What is the type of error message?
#this is a ZeroDivision Error
# 3. What additional information does the interpreter provide about this type of error?
# It says that there is an error with '/' becuase it's trying to divide by zero.
# 4. Where is the error in the code?
# The error is in "20/0"
# 5. Why did the interpreter give you this error?
# Becuase the interpreter is trying to divide by zero, which is illogical.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# The error is on 155
# 2. What is the type of error message?
# This is a LoadError
# 3. What additional information does the interpreter provide about this type of error?
# It says the require_relative command cannot load such a file.
# 4. Where is the error in the code?
# The error is in "cartman's essay."
# 5. Why did the interpreter give you this error?
# The require_relative action is calling to a document that doesn't exist in the location it's looking.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.


=begin
Which error was the most difficult to read?
  The first error was the most difficult. Even though it said the line number was going to be tricky, I still thought that something was wrong with the way I'd commented the example.

How did you figure out what the issue with the error was?
Once I read that it was a syntax error expecting an end, I realized the line number was just stating that it had looked through the whole document but didn't find an end.
Were you able to determine why each error message happened based on the code?
  Yes, with the possible exception of the first example, I didn't have any problems determining the causes of any of the error messages.
When you encounter errors in your future code, what process will you follow to help you debug?

Line number seems like a good place to start, followed by error type. That way, I should be able to diagnose the error without needing too much additional information and spending too much time on a particular error. If I still can't figure it out, I have the terminal diagnostic messages to help me narrow it down.
