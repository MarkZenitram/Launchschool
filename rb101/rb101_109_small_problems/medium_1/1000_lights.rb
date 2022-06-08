def lights(number)
  lights_array = (1..number).to_a
  iteration = 1

  loop do
    counter = iteration + 1
    iteration += 1
    p lights_array
    loop do
      if lights_array.include?(counter)
        lights_array.delete(counter)
      else
        lights_array << counter
      end
      counter += iteration
      break if counter >= number
    end

    
    break if iteration > number
  end
  lights_array
end

lights(5)
