require "pry"

cats = []

puts("Tell me a cat!")
first_cat = gets.chomp

puts("Tell me another cat!")
second_cat = gets.chomp

puts("Tell me another cat!")
third_cat = gets.chomp

binding.pry

counter = 0

loop do
  counter += rand(1..20)
  binding.pry
  break if counter > 50
end
