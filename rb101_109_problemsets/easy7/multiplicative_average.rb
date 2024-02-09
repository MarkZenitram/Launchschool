def show_multiplicative_average(arr)
  multiplied_numbers = arr.reduce(:*).to_f/arr.size
  puts "The result is #{format("%.3f", multiplied_numbers)}"
end




p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667