munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# add appropriate age group to each family member
# algorithm
# 1 - have age groups hash
# 2 - iterate through each family member in munsters
# 3 - create an age group entry for them based on their age
# 4 --- store their age
# 5 --- iterate through age groups
# 6 --- if age group range includes current_age
# 7 --- add that group

age_groups = {
  kid: (0..17),
  adult: (18..64),
  senior: (65..)
}

munsters.each_value do |v|
  current_age = v["age"]

  age_groups.each_pair do |group, range|
    v["age_group"] = group.to_s if range.include? current_age
  end
end

puts munsters

