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

# 7 - will this mess with munsters data?
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)

# Yes - method works on munster hash directly 
# specifically, it changes the values inside the dictionaries
# these altered dictionaries are inside munsters
# these were altered "in place" and thus affect munsters

# 8 what is the result?
def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# "paper"!!!!!

#9
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

bar(foo)
# Returns what???
# "no" - foo always returns yes and yes does not equal no