ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

total_age = 0
current_count = 0
counter = 0
all_ages = ages.values

loop do
  break if counter == ages.size
  current_count += all_ages[counter]
  total_age = current_count
  counter += 1
end

p current_count
p total_age


