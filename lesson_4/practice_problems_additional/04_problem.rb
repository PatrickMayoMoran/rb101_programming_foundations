ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# pick out the minimum age

# solution 1 - using min
ages.values.min

# solution 2 - using reduce
smallest = ages.reduce do |memo, entry|
  memo.last < entry.last ? memo : entry
end

smallest.last