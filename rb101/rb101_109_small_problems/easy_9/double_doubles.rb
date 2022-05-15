def twice(integer)
  string_of_integer = integer.to_s

  if string_of_integer.size.odd?
    string_of_integer.to_i * 2
  elsif string_of_integer[0,string_of_integer.size / 2] == string_of_integer[string_of_integer.size/2, string_of_integer.size/2]
    string_of_integer.to_i
  else
    string_of_integer.to_i * 2
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