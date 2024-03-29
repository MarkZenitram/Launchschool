# 1) ODD NUMBER 2) DIVISIBLE by 7 and 3) No repeat digits!!!
def featured_number?(num)
  arr_of_num = num.to_s.chars
  if num.odd? && num % 7 == 0 && (arr_of_num == arr_of_num.uniq)
    return true
  else
    return false
  end
end

def featured(num)
  num = num + 1
  until featured_number?(num)
    num += 1
  end
  num
end




p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements