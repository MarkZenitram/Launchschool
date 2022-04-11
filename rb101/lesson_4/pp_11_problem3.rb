ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.select { |k,v| v < 100}

ages.keep_if { |k, age| age < 100}

p ages