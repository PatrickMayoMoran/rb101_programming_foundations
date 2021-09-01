s = 'abc'
puts s.public_methods.inspect

# adjust to only show string methods
puts s.public_methods(false).inspect