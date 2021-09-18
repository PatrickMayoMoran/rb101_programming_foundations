munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# PROBLEM: print out name, age, and gender of each family member

# EXAMPLE: Herman is a 32-year-old male.

# Input: hash of string/hash key value pairs
# Output: information put to screen; no return value specified

# Algorithm
# 1 - iterate through hash, do puts statement then and there!

munsters.each do |k, v|
  puts "#{k} is a #{v["age"]}-year-old #{v["gender"]}."
end
