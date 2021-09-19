arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# Problem: return an array which contains only the hashes with all even number values

# Input: array of hashes
# Output: new array of hashes with even numbers

# Algorithm
# 1 - iterate through array using select
# 2 - select hashes where all values are integers

arr.select do |hsh|
  hsh.values.flatten.all? { |num| num.even? }
end

# provided solution - call all on a hash
arr.select do |hsh|
  hsh.all? do |_, v|
    v.all? { |num| num.even? }
  end
end
