def sum(some_int)
  some_int = some_int.to_s
  some_int = some_int.split('')
  total = 0
  counter = 0

  loop do
    break if counter == some_int.size

    total = some_int[counter].to_i + total
    counter += 1
  end
  p total
end



puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45