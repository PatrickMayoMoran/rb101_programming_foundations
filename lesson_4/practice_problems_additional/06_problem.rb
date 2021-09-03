flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# amend this array so that the names are all shortened to first three characters

# solution 1 - using map!
flintstones.map! { |el| el[0,3] }

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# solution 2 - each_with_index
flintstones.each_with_index { |el, i| flintstones[i] = el[0,3] }