arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# Input: array of arrays
# Output: hash with key value pairs made up of
# first and second items in each nested array

# Algorithm
# 1 - create new hash
# 2 - iterate through array
# 3 - assign new hash key to item[0] and hash value to item[1]
# 4 - return hash

hsh = {}
arr.each do |el|
  hsh[el[0]] = el[1]
end
hsh

# OR Algorithm
# 1 - iterate through array using each with object empty hash
# 2 - for each item, hash[item[0]] = item[1]

arr.each_with_object({}) do |arr, hash|
  hash[arr[0]] = arr[1]
end
