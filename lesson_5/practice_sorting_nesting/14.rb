hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

# Problem: return an array with colors of fruits and sizes of vegetables
# sizes uppercase, colors capital

# Input: hash
# Output: array of colors and sizes

# Algorithm
# 1 - create empty array
# 1 - iterate through hash values
# 2 --- if value[:type] is fruit, add capitalized colors
# 3 --- if value[:type] is vegetable, add title size

arr = []
hsh.each_value do |v|
  arr << (v[:colors].map { |color| color.capitalize }) if v[:type] == 'fruit'
  arr << (v[:size].upcase) if v[:type] == 'vegetable'
end
arr

# provided solution

hsh.map do |_, v|
  if v[:type] == 'fruit'
    v[:colors].map do |item|
      item.capitalize
    end
  elsif v[:type] == 'vegetable'
    v[:size].upcase
  end
end
