flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# find index of first person whose name starts with "Be"

# solution 1 - index with block
flintstones.index { |el| el[0, 2] == "Be" }