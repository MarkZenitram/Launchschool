def valid_triangle?(arr)
  if arr.include?(0) || (arr[0] + arr[1]) < arr[2]
    return false
  else
    return true
  end
end

def triangle(side1,side2,side3)
  triangle = [side1,side2,side3].sort
  if valid_triangle?(triangle) && triangle.all?(triangle[0])
    return :equilateral
  elsif valid_triangle?(triangle) && triangle.uniq.size == 2
    return :isosceles
  elsif valid_triangle?(triangle) && triangle == triangle.uniq
    return :scalene
  else
    return :invalid
  end
end





p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid