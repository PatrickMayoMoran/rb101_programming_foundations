# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

# Input: string
# Output: array of strings

# Rules: Explicit
# -Case matters: 'Mom' is not a palindrome, 'mom' is
# -Must return all substrings, not just the first one encountered

# Rules: Implicit gleaned from test cases
# -return data structure is an array, even if one/no strings are palindromes
# -palindromes stored in order they are encountered from starting letter onward
# -empty string input should be returned as empty array
# -single letters are not palindromes, must be at least 2 letters

# Pseudocode
# create empty array
# fill array with substrings that are two chars or greater in length
# create empty array
# fill array with substrings that are palindromes
# return array of palindromes

# get substrings of 2 or greater from a string
# start at beginning of string (index 0) and go up to
# get every substring from length 2 to length of string
# go to next char in string (index +1)

def get_substrings(string)
  substrings_array = []
  index = 0
  while index <= string.length - 2
    size = 2
    while size <= string.length - index
      substrings_array << string.slice(index, size)
      size += 1
    end
    index += 1
  end
  return substrings_array
end

def is_palindrome?(string)
  string == string.reverse
end

def palindrome_substrings(string)
  substrings_array = []
  substrings_array = get_substrings(string)
  palindrome_substrings = []
  substrings_array.each do |string|
    palindrome_substrings << string if is_palindrome?(string)
  end
  return palindrome_substrings
end

  palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
  palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
  palindrome_substrings("palindrome") == []