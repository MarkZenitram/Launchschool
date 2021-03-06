def show_multiplicative_average(array_of_ints)
  total = array_of_ints.inject(:*).to_f
  average = total / array_of_ints.size
  puts "The result is " + format("%0.3f", average)
end





show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667