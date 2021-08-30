def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# [4, 5, 3, 6]
# 4 goes to a, 6 goes to d, then 5 goes to b
# outside, outside, work through the middle