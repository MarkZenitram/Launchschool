def triangle(one, two, three)
  angles = [one, two, three]

  if angles.sum != 180 || angles.include?(0)
    return :invalid
  elsif angles.include?(90)
    return :right
  elsif one < 90 && two < 90 && three < 90
    return :acute
  else
    return :obtuse
  end
end




p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid