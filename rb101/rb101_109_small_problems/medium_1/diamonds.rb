def diamond(integer)
  pyramid_string = ' ' * integer
  midpoint = integer / 2
  counter = 1
  counter2 = integer / 2
  pyramid_string[midpoint] = '*'
  puts pyramid_string

  loop do 
    pyramid_string[midpoint - counter] = '*'
    pyramid_string[midpoint + counter] = '*'
    puts pyramid_string 
    counter += 1
    break if midpoint + counter == integer
  end

  loop do
    break if counter2 == 0
    pyramid_string[midpoint - counter2] = ' '
    pyramid_string[midpoint + counter2] = ' '
    puts pyramid_string
    counter2 -= 1
  end
end

diamond(3)
