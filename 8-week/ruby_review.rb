#

def super_fizbuzz(arr)
  arr.map!{ |x|
    if x % 3 == 0 && x % 5 == 0
      x = "FIZZBUZZ"
    elsif x % 5 == 0
      x = "Buzz"
    elsif x % 3 == 0
      x = "Fizz"
    else x
    end
  }
end

super_fizbuzz([1,2,3,4,5,6,7,8,9,10,15])

def super_switch(arr)
  arr.map!{|x|
    case
    when x % 3 == 0 && x % 5 == 0 then x ="Fizzbuzz"
    when  x % 3 == 0 then x = "Fizz"
    when x % 5 == 0 then x = "Buzz"
    else x
    end

 }
end


super_switch([1,2,3,4,5,6,7,8,9,10,15])


