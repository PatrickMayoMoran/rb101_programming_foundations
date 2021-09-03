statement = "The Flintstones Rock"

# create a hash that expresses the frequency of each letter
# Input: string
# Output: dictionary

# Rules
# Explicit:
# - hash shows frequency of each letter
#
# Implicit:
# - space is not a letter
# - capital letters are different from lower case


# SOLUTION 1
# -----------
# Data structure - use an array to iterate through letters

# algorithm
# 1 - remove white space from statement
# 2 - split statement into characters
# 3 - initialize empty dict
# 4 - iterate through array of characters
# 5 --- if char in dictionary, add 1
# 6 --- if char not in dictionary, add with value of 1
# 7 - return dictionary

letters_array = statement.delete(' ').split('')

letters_dictionary = letters_array.each_with_object({}) do |el, d|
  if d[el] == nil
    d[el] = 1
  else
    d[el] += 1
  end
end

puts letters_dictionary

# SOLUTION 2
# ----------
# algorithm
# 1 - remove spaces
# 2 - initialize empty dict
# 3 - iterate through chars
# 4 - if char in dict, add 1
# 5 - if char not in dict, add key-value with 1 as value

no_spaces_statement = statement.delete(' ')
letters_dict = {}

no_spaces_statement.each_char do |char|
  if letters_dict[char] == nil
    letters_dict[char] = 1
  else
    letters_dict[char] += 1
  end
end

puts letters_dict

# SOLUTION 3
# ----------
# algorithm
# 1 - initialize dictionary
# 2 - create array of all letters, upper and lower
# 3 - iterate through array
# 4 - for each letter, count how many times that letter appears in statement
# 5 - assign this value to the dictionary with letter as key IF frequency > 0

results = {}
all_letters = ('A'..'Z').to_a + ('a'..'z').to_a

all_letters.each do |letter|
  frequency = statement.count(letter)
  results[letter] = frequency if frequency > 0
end
