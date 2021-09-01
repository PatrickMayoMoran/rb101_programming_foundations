def select_fruit(dict)
  keys = dict.keys
  counter = 0
  fruits_dict = {}

  loop do
    break if counter == keys.size # in case the hash is empty
    
    current_value = keys[counter]

    if dict[current_value] == "Fruit"
      fruits_dict[current_value] = "Fruit"
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