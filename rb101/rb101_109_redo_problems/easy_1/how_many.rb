# Create a method that counts occurences of each item in an array
# Input: Array
# Output: use a HASH to store data and output it as a string statement such as "car" => "4"

#Words are CASE SENSITIVE

def count_occurrences(arr)
  occurences = {}

  arr.each do |item|
    occurences[item] = arr.count(item)
  end

  occurences.each do |type, count|
    puts "#{type} => #{count}"
  end
end


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)