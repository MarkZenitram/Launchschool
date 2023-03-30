def digit_list(num)
  num_arr = []
  digit = 0
  loop do
    num, digit = num.divmod(10)
    num_arr.prepend(digit)
    break if num == 0
  end
  num_arr
end




puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true