produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hash)
  selected_hash = {}
  hash_keys = hash.keys
  counter = 0

  loop do
    break if counter == hash_keys.size

    if hash[hash_keys[counter]] == 'Fruit'
      selected_hash[hash_keys[counter]] = hash[hash_keys[counter]]
    end
    counter += 1
  end

  selected_hash
end

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

