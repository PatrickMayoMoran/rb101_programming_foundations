ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# 1 Is Spot present?
ages['Spot'] != nil
ages.any? { |k, v| k == 'Spot'}
ages.assoc('Spot') != nil
ages.has_key?('Spot')
ages.include?('Spot')
ages.member?('Spot')
