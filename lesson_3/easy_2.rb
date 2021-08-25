ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# 1 Is Spot present?
ages['Spot'] != nil
ages.any? { |k, v| k == 'Spot'}
ages.assoc('Spot') != nil
ages.has_key?('Spot')
ages.include?('Spot')
ages.member?('Spot')

# 2 
munsters_description = "The Munsters are creepy in a good way."
# convert to following
"tHE mUNSTERS ARE CREEPY IN A GOOD WAY." # munsters_description.swapcase
"The munsters are creepy in a good way." # munsters_description.capitalize
"the munsters are creepy in a good way." # munsters_description.downcase
"THE MUNSTERS ARE CREEPY IN A GOOD WAY." # munsters_description.upcase

# 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
# add the following
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)

# 4
advice = "Few things in life are as important as house training your pet dinosaur."
# Does this have substring 'Dino'?
advice.match?('Dino')
advice.include?('Dino')

# 5 - easier way to write this array
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)