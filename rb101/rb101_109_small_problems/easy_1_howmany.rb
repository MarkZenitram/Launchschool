vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(your_array)
  occurences_hash = {}
  counter = 0
  no_dup_array = your_array.uniq

  loop do
    break if counter == no_dup_array.size

    occurences_hash[no_dup_array[counter]] = your_array.count(no_dup_array[counter])
    counter += 1  
  end
  occurences_hash.each do |k,v|
    puts "#{k} => #{v}"
  end
end






count_occurrences(vehicles)

