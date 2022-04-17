ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

under_100_ages = {}
counter = 0
ages_values = ages.values
ages_keys = ages.keys

loop do
  break if counter == ages.size

  if ages_values[counter] < 100
    under_100_ages[ages_keys[counter]] = ages_values[counter]
  end
  counter += 1

  under_100_ages
end

p under_100_ages

ages.keep_if { |key, value| age < 100}