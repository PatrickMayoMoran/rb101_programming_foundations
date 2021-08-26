# 1 ASCII art - one liner that prints with additional indent per line
10.times { |i| puts "#{' '*i}The Flintstones Rock!" }

# 2 What is the error below and how can you fix?
puts "the value of 40 + 2 is " + (40 + 2)
# error is can't convert integer implicitly to concat with string. Two fixes:
puts "the value of 40 + 2 is #{40 + 2}"
puts "the value of 40 + 2 is " + (40 + 2).to_s

# 3 how to adjust so it exits loop for 0 or negative input?
def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end
# Use a while loop to check condition before entering
while divisor > 0 do
  factors << number / divisor if number % divisor == 0
  divisor -= 1
end
# why is % used? -> to find integer factors
# 
# Why is factors last line?
# To return the array rather than nil

# 4 What's the difference?
def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end
# Version 1 modifies the buffer array that is passed in
# Version 2 does not modify input, but rather returns new array

# 5 Fix below
limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# need to pass limit in to the method. It is defined but not available
# in the method scope

# 6 What's the ouput?
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# 34 - answer is not modified, new value is returned and stored
# in new_answer, but p call is to answer

