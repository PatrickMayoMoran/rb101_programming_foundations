friends = ['Sarah', 'John', 'Hannah', 'Dave']

counter = 0
loop do
  puts "Hello, #{friends[counter]}!"
  break if counter + 1 == friends.length
  counter += 1
end