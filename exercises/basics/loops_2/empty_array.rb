names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.pop until names.size == 0
  break
end

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.pop
  break if names.empty?
end