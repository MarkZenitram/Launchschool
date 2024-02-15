def diamond(size)
  half_size = (size/2.0).ceil
  stars = 1
  1.upto(half_size) do |num|
    puts "#{' '*(half_size-num)}#{'*'*stars}"
    stars += 2
  end

  second_half_stars = size - 2

  1.upto(half_size-1) do |num|
    puts "#{' '*(num)}#{'*'*second_half_stars}"
    second_half_stars -= 2
  end



end

diamond(3)
diamond(5)
diamond(9)