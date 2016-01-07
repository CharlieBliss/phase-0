=begin Pseudocode

take a countainer holding all names

sort the names randomly

create new containers holding names, separated by 4

if any group is smaller than 3, merge into different group.

if any group is larger than 5, split that group in half

output container of containers with sorted names
end

=end

#Initial Solution

def acct_group(array)
  sorted = array.shuffle
  final = []

  sorted.each_slice(4){|x| final << x }

  final.each do |group|
    if group.length < 3
      final[0] += group
      final.pop
    end
  end
  final.each do |group|
    if group.length > 5
      group.each_slice(3){|x| final << x}
      final.shift
    end
  end
end



#Refactored Solution
def acct_group_ref(array)
  unless array.is_a? Array
    raise ArgumentError.new("Needs to be an Array")
  end
  sorted = array.shuffle
  final = []

  sorted.each_slice(4){|x| final << x }

  final.each do |group|
    if group.length < 3
      final[0] += group
      final.pop
    elsif group.length > 5
      group.each_slice(3){|x| final << x}
      final.shift
    end
  end
end

print acct_group_ref("banana")

=begin
What was the most interesting and most difficult part of this challenge?
  The most difficult and interesting part for me was getting the group sizes to be appropriately uniform. I almost called it a day when I had the groups organizing themselves into groups of 4,5, and 6, but I decided I wanted to split the big group into 3 instead of 6, so I found myself trying to work out that puzzle. It was also difficult figuring out when I was finished, since there were no real parameters to work off of. I think the program does what it's supposed to, so I'm satisfied with the results.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
  Not really. I think my psuedocode is too vague, since I'm learning a lot about the code as I write the solution. Sometimes I'll look back at the psuedocode and realize I didn't really do what I was trying to, but figured out a different approach. I sort of feel like psuedocode has to either be really vague or you risk confining yourself to a single strategy. If that strategy doesn't work out, you might feel frustrated or inadequate, even if another approach might work.
Was your approach for automating this task a good solution? What could have made it even better?
  I think it was pretty good. One suggestion that the challenge gave that I wasn't sure how to handle was saving the groups for later. I also wasn't sure if we wanted to get a different result every time or not, since the challenge just said "If you run this program three times in a row, will the program give you three different outputs?" Mine currently does, but I'm not sure if I was supposed to or not.
What data structure did you decide to store the accountability groups in and why?
  I chose to sort the names into an array of smaller arrays. I didn't really feel like a hash was appropriate here, since none of the information seemed to operate in pairs. I suppose I could have assigned hashes containing the arrays, calling them group one, group two, but that didn't occur to me until after I had finished. I got the information that I wanted to back, small groups of a large group, so I'm satisfied with the method I used.
What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
  I couldn't really find any new methods that would help here, so I just made sure that the object I was recieving had to be an array and I cleaned up my each method so that I only used one. I think it looks cleaner and operates better, but I'm sure there was a better solution that I could have come up with. I'm just happy what I have now is working.

=end