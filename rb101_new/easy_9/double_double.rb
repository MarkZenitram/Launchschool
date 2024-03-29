def left_right_equal?(num)
  half_size = num.to_s.size/2
  half_one = num.to_s.slice(0,half_size)
  half_two = num.to_s.slice(half_size, half_size)
  return true if half_one == half_two
end

def twice(num)
  if num.to_s.size.even? && left_right_equal?(num)
    num
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