def light_switch(num)
  on_array = (1..num).to_a
  off_array = []
  max_iterations = num - 1
  iteration = 1

  loop do
    break if iteration == num
    counter = iteration + 1

    loop do
      break if counter > num
      off_array << counter
      counter += counter
    end

    if off_array != off_array.uniq
      on_array << counter
      off_array.delete(counter)
    else
      on_array = on_array- off_array
    end

    iteration += 1
  end
  on_array
end

p light_switch(5)