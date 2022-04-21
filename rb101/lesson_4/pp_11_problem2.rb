ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages_values = ages.values



counter = 0
total_sum = 0

loop do
  total_sum += ages_values[counter]
  counter += 1
  break if ages_values.size < counter
  p total_sum
end



