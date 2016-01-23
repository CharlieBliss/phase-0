def create_array_of_people(cohort)
  people = %w{cohort}
end

def people(people_list)
  groups = people_list.each_slice(4).to_a
end


put