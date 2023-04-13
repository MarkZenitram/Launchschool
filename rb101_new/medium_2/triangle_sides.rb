def triangle(side1, side2, side3)
  sides_array = [side1, side2, side3].sort
  shortest_sides = sides_array[0] + sides_array[1]
  longest_side = sides_array[2]
  if sides_array.include?(0) || shortest_sides < longest_side
    :invalid
  elsif side1 == side2 && side2 == side3
    :equilateral
  elsif side1 != side2 && side2 != side3
    :scalene
  else
    :isosceles
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid