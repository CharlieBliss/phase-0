# Leap Years

# I worked on this challenge [by myself].


# Your Solution Below

def leap_year?(int)
  if int % 4 == 0 && int % 100 != 0
    return true
  elsif int % 400 == 0
    return true
  else
    return false
  end
end
