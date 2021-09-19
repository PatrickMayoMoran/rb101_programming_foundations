arr1 = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# given above, don't modify original array
# instead return new array of same structure
# new array same as original, except each value incremented by 1
# use map

# input: array of hashes
# output: copy of array with all values incremented, original array unchanged

# Algorithm
# 1 - iterate through array with map
# 2 - create empty hash
# 3 - iterate through keys, values of hash
# 4 - in empty hash, assign key to value plus 1
# 5 - return new hash
arr1.map do |el|
  new = {}
  el.each do |k, v|
    new[k] = v + 1
  end
  new
end

arr1.map do |el|
  el.transform_values { |v| v + 1 }
end
