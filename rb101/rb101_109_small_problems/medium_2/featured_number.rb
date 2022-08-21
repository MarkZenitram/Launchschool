#featured number is a number that is:
# ODD
# MULTIPLE of 7
# Digits occur only ONCE (133 is NOT a featured number due to two 3s)

def no_repeating_digits?(numbers)
  numbers_array = numbers.to_s.chars
  if numbers_array.uniq.size == numbers_array.size
    return true
  else
    return false
  end
end

def featured_number?(number)
  if number.odd? == true && number % 7 == 0 && no_repeating_digits?(number) == true
    return true
  else
    false
  end
end

def featured(number)
  number += 1 until number.odd? && number % 7 == 0

  loop do
    if no_repeating_digits?(number) && featured_number?(number)
      return number
      break
    else
      number += 7
      break if number >= 9_876_543_210
    end
  end
  'There is no possible number that fulfills those requirements.'
end

#p featured(12) == 21
#p featured(20) == 21
#p featured(21) == 35
#p featured(997) == 1029
#p featured(1029) == 1043
#p featured(999_999) == 1_023_547
#p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements