def select_fruit(dict)
  keys = dict.keys
  counter = 0
  fruits_dict = {}

  loop do
    break if counter == keys.size # in case the hash is empty
    
    current_key = keys[counter]
    current_value = dict[current_key]

    if current_value == "Fruit"
      fruits_dict[current_key] = "Fruit"
    end

    counter += 1
  end

  fruits_dict
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

def multiply(array, factor)
  multiplied_numbers = []
  counter = 0

  loop do
    break if array.size == counter

    current_value = array[counter]
    multiplied_numbers[counter] = current_value * factor

    counter += 1
  end

  multiplied_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]