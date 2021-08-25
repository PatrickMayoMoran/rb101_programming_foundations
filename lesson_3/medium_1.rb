# 1 ASCII art - one liner that prints with additional indent per line
10.times { |i| puts "#{' '*i}The Flintstones Rock!" }

# 2 What is the error below and how can you fix?
puts "the value of 40 + 2 is " + (40 + 2)
# error is can't convert integer implicitly to concat with string. Two fixes:
puts "the value of 40 + 2 is #{40 + 2}"
puts "the value of 40 + 2 is " + (40 + 2).to_s