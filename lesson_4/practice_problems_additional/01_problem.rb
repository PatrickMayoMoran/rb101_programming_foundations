flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# Turn into a hash where the names are keys and the values are array positions

# solution 1 - use each with object to initialize an empty hash,
# and add each item as the key with flintstones.index for index value
flint_hash = flintstones.each_with_object({}) do |i, hash|
  hash[i] = flintstones.index(i)
end

puts flint_hash

# solution 2 - initialize empty dictionary first and then use 
# each with index to add key, value pairs
flint_hash = {}
flintstones.each_with_index do |item, index|
  flint_hash[item] = index
end

puts flint_hash