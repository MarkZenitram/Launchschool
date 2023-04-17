def star(num)
  lines = ' ' * num
  half = num/2
  half.downto(1) do |x|
    puts lines = lines[counter + x]
  end
end


star(7)

*  *  *
 * * *
  ***
*******
  ***
 * * *
*  *  *