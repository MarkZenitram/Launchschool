<<<<<<< HEAD
numbers = []
count = 0

while count < 5 
  numbers << rand(99)
  count += 1
end

p numbers
=======
# Use Ruby's Array method delete_if and String method start_with? to delete all of the strings that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

puts arr.delete_if { |v| v.start_with?("s") }


>>>>>>> a2669d2 (all changes)
