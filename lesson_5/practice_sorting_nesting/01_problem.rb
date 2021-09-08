arr = ['10', '11', '9', '7', '8']

# How would you order this array in descending numeric value?

# PROBLEM
# Input: array of strings
# Output: same array, ordered highest to lowest by value of number inside string

# ALGORITHM
# sort array high-to-low after converting strings to integer

arr.sort { |a, b| b.to_i <=> a.to_i }