def count_occurrences(arr)
  occurrences = {}
  arr.each do |item|
    occurrences[item] = arr.count(item)
  end
  puts occurrences
end



vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)