numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# what happens?
# iterators iterate over real time array and length, not copies
# Above would put 1, 3 and array would be [3, 4]

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# same here
# puts 1, 2
# array [1, 2]