words = "the flintstones rock"

# create a titleize function that makes each word capital
#
# Input: string
# Output: new string
# 
# algorithm
# 1 - split string into words
# 2 - iterate through each word
# 3 - capitalize word
# 4 - join array with spaces
# 5 - return that string

array = words.split
array.each { |word| word.capitalize! }
titleized_string = array.join(' ')
puts titleized_string

# one line
words.split.map { |word| word.capitalize}.join(' ')