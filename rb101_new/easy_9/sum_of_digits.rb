def sum(num)
  total = 0
  num.to_s.chars { |char| total += char.to_i}
  p total
end


puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45