hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# Using the each method, output the vowels in each string

# Input: hash with symbol keys and arrays of strings as values
# Output: printing to the screen the vowels in each string

# Algorithm
# 1 - iterate through each key/value pair in hash
# 2 - value is an array; iterate through each string in array
# 3 - convert string into characters
# 4 - iterate over each char
# 5 - put character to screen if character is a vowel

hsh.each do |k, v|
  v.each do |str|
    chars = str.chars
    chars.each do |char|
      puts char if char.match?(/[aeiou]/)
    end
  end
end

# given solution

vowels = 'aeiou'

hsh.each do |_, v|
  v.each do |string|
    string.chars.each do |char|
      puts char if vowels.include?(char)
    end
  end
end