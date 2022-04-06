# Write a method that counts the number of occurrences of each element in a given array.
# The words in the array are case-sensitive: 'suv' != 'SUV'. Once counted, print each element alongside the number of occurrences.
# Input: vehicles array
# Output: Element name and number of occurrences
# Data type: arrays
# Case-sensitive thus suv != SUV

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  p occurrences
  
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

# Expected output:
#   car => 4
#   truck => 3
#   SUV => 1
#   motorcycle => 2