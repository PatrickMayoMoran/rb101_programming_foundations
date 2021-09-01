def select_fruit(dict)
  keys = dict.keys
  counter = 0
  fruits_dict = {}

  loop do
    break if counter == keys.size # in case the hash is empty
    
    current_key = keys[counter]
    current_value = dicts[current_key]

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