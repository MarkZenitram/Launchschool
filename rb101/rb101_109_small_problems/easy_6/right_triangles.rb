def triangle(integer)
  counter = 1

  loop do
    puts "#{'*' * (integer - (integer - counter))}" + "#{' ' * (integer - counter)}"  
    counter += 1
    break if counter > integer
  end
end

triangle(9)