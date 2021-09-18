arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# given above, return new array with each subarray sorted in descending order

# Input: Array of arrays
# Output: New array of given arrays, sorted in descending order

# Algorithm
# 1 - create new array variable that we will map to
# 2 - onto each mapped array, sort in descending order

new_arr = arr.map do |el|
  el.sort.reverse
end
puts new_arr

# another option that actually sorts instead of reversing

other_arr = arr.map do |el|
  el.sort { |a, b| b <=> a }
end
puts other_arr

# looking at solution, just needed to return new array - did
# not need to store in a new variable