arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# given above, return new array of identical structure,
# but only with numbers that are multiples of 3

# Input: array of arrays
# output: array of arrays, same as above, but only retaining multiples of 3 values

# Algorithm
# 1 - iterate through array with map
# 2 - for each array, select values that are multiples of 3

arr.map do |el|
  el.select { |bb_el| bb_el % 3 == 0 }
end