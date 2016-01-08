
source = {"key"=> 9,"stuff"=>4,"things"=>5 }

def my_hash_sorting_method(source)
  list = source.sort_by{ |k, v| v}.to_h
  return list
end


puts source
puts my_hash_sorting_method(source)

