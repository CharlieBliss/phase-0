def add_it_up(x)
  y=''
  x.each do |z|
    y += z + ' '
  end
  puts y
end

adder(['I','Love','Coding','Ruby','x'])