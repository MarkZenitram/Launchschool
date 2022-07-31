def triangle(one, two, three)
  sides_array = [one, two, three]
  largest = sides_array.max
  sides_array.sort!.pop
  
  if one == 0 || two == 0 || three == 0
    return :invalid
  elsif sides_array.sum < largest
    return :invalid
  elsif one == two && two == three
    return :equilateral
  elsif one == two || two == three
    return :isosceles
  else
    return :scalene
  end
end



p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid