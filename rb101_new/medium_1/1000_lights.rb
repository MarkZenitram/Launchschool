def lights(switches)
  switch_arr = (1..switches).to_a
  counter = 0
  loop do
    current_arr = []
    iteration = 2 + counter
    number = iteration
    break if iteration > switches
    loop do
      current_arr << iteration
      iteration += number
      break if iteration > switches
    end
    current_arr.each do |num|
      if switch_arr.include?(num)
        switch_arr.delete(num)
      else
        switch_arr << num
      end
    end
    counter += 1
  end
  p switch_arr
end


lights(10)
lights(5)
