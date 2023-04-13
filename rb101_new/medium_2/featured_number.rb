def featured?(number)
  number_string = number.to_s.chars
  if number_string.uniq == number_string && number.odd? && ((number % 7) == 0)
    return true
  else
    return false
  end
end

def featured(number)
  current_number = number + 1
  loop do
    if featured?(current_number)
      break
    else
      current_number += 1
    end
  end
  p current_number
end





#p featured(12) == 21
#p featured(20) == 21
# featured(21) == 35
# featured(997) == 1029
#p featured(1029) == 1043
#p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
#p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements