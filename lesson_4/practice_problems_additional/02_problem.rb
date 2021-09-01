ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# add up all of the ages from the Munster family hash

# solution 1 - get values into an array, call sum on the array
ages.values.sum

# solution 2 - same, but using reduce
ages.values.reduce(:+)

# solution 3 - using each_value and initialized variable
total = 0
ages.each_value { |age| total += age }