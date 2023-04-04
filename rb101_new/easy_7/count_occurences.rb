def count_occurrences(arr)
  keys = arr.uniq
  counter = 0
  occurences = {}
  loop do
    occurences[keys[counter]] = arr.count(keys[counter])
    counter += 1
    break if counter == keys.size
  end
  p occurences
end



vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)