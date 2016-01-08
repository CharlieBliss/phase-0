def get_grade(array)
  sum = 0
  array.each do |x|
    sum += x
  end
  int = sum / array.length
  if int >= 90
    return "A"
  elsif int >= 80
    return "B"
  elsif int >= 70
    return "C"
  elsif int >=60
    return "D"
  else
    return "F"
  end
end

#puts get_grade([200,45,45,34,56,1,1])

def find_median_numbers(array)
  array.sort!{|x,y| x<=>y}
  if array.length % 2 != 0
    return array[(array.length/2)]
  else
    return (array[(array.length/2)-1].to_f + array[(array.length/2)].to_f) / 2
  end
end

puts find_median_numbers([4.5,0,-1])



def find_median_letters(array)
  array.sort!{|x,y| x<=>y}
  if array.length % 2 != 0
    return array[(array.length/2)]
  else
    return array[(array.length/2)-1] + array[(array.length/2)]
end
end

puts find_median(["apple","cherry","banana","cherry"])



