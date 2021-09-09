munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# PROBLEM: Figure out total age of male members of family

# Input: Hash of name keys with hash values - nested hash has age and gender keys
# Output: integer of summed ages

# ALGORITHM
# 1 - select members with gender of male
males = munsters.select { |k, v| v["gender"] == "male" }

# 2 - add ages together of selected members
total_age = 0
males.each do |k, v|
  total_age += v["age"]
end

# Another way to sum after looking at enumerable module
males.sum { |k, v| v["age"] }

# Solution provided - iterate through original hash value, do it all at once
total_age = 0
munsters.each_value do |v|
  total_age += v["age"] if v["gender"] == "male"
end

total_age