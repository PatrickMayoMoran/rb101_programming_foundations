# 1
# predicting object ids in big method
# successfully predicted EXCEPT for missing that variables
# defined within 1.times call would lose meaning outside of block

# 2
# Same as above, except instead of a block variables were messed with inside the method
# got all right
# my understanding: blocks set a local scope that can access and affect variables outside
# methods have method scope where values are passed in - assignment inside method
# does not affect variables outside method even if they have the same name

# 3 What will be displayed and why?
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# string was reassigned within method with new value, original not altered
# reference to array object was altered in place
My string looks like this now: pumpkins
My array looks like this now: ["pumpkins", "rutabaga"]

# 4 What will be displayed and why?
def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# original string object was modified
# new array created and assigned to local variable within method, no effect outside
My string looks like this now: pumpkinsrutabaga
My array looks like this now: ["pumpkins"]

# 5 How can we modify below to be clearer/more predictable?
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# by not modifying what's passed in - instead making local variable copies
# and returning them to be stored
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabage"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

# 6 Simplify without changing return value
def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

# take away the if statement
def color_valid(color)
  color == "blue" || color == "green"
end