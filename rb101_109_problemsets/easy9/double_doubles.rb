def double_number?(num)
  string_of_num = num.to_s
  half_length = string_of_num.size/2
  if string_of_num[0,half_length] == string_of_num[half_length, half_length] && string_of_num.size.even?
    return true
  else
    return false
  end
end

def twice(num)
  if double_number?(num)
    return num
  else
    num * 2
  end
end



p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10