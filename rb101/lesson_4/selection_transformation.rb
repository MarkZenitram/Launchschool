produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(produce_list)
  produce_keys = produce_list.keys
  counter = 0
  selected_fruits = {}

  loop do
    break if counter == produce_keys.size #in case produce_list is an empty hash

    current_key = produce_keys[counter] # Iterates through the keys of a hash one at a time and attaches the key value
    current_value = produce_list[current_key]

    if current_value == 'Fruit' # This is the value we want to extract
      selected_fruits[current_key] = current_value # Attachment of the the key and the value in the empty hash
    end

    counter += 1
  end
  selected_fruits
end


p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}