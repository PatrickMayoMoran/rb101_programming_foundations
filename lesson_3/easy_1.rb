# Question 1: what does the code below output? Why?
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# answer:
# 1
# 2
# 3
# 3
# uniq does not mutate the array. So puts numbers goes
# through each item in array, converts to string, and displays
# on a new line.

# Question 2: difference between ! and ?
# != and where use: "does not equal", comparisons/conditionals
# ! before; negation, make true false and false true
# ! after; indicates mutation array.uniq!
# ? before something; ternary operator
# ? after something; return true or false
# !! before something; converts to true or false based on thing

# 3
advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')

# 4
numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1) # deletes at index 1, so removes/returns 2 and shifts values down
numbers.delete(1) # deletes all values of 1 and shifts array accordingly

# 5
# Programmatically determine if 42 lies between 10 and 100.
(10..100).include?(42)

# 6
famous_words = "seven years ago..."
famous_words = "Four score and " << famous_words
famous_words = "Four score and " + famous_words
famous_words.prepend('Four score and ')

# 7
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
# to unnest
flintstones.flatten!

# 8
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones.to_a[2]

