# Factorial

# I worked on this challenge [by myself ].


# Your Solution Below
def factorial(number)
  y=1
  (1..number).each do |x|
    y *= x
  end
return y
end

factorial(15)