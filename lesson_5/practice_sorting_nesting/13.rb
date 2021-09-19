arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# PROBLEM: sort sub-arrays but only based on odd numbers

# Input: array of arrays
# Output: new array with same sub-arrays sorted by odd numbers

# Algorithm
# 1 - sort by odd numbers
# 2 --- select only odd numbers in array

arr.sort_by do |el|
  el.select { |item| item.odd? }
end