def star(size)
  half_point = size/2
  empty_space = ' '*size
  index1 = 0
  index2 = -1

  loop do
    break if index1 == half_point
    empty_space = ' '*size
    empty_space[half_point] = '*'
    empty_space[index1] = '*'
    empty_space[index2] = '*'
    index1 += 1
    index2 -= 1
    puts empty_space
  end

  puts '*' * size

  index1 = half_point - 1
  index2 = half_point + 1
  loop do
    break if index1 < 0
    empty_space = ' '*size
    empty_space[half_point] = '*'
    empty_space[index1] = '*'
    empty_space[index2] = '*'
    index1 -= 1
    index2 += 1
    puts empty_space
  end
end



star(9)

##*  *  *
## * * *
##  ***
##*******
##  ***
## * * *
##*  *  *