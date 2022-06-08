munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

counter = 0
munsters_keys = munsters.keys
munsters_values = munsters.values
total_age = 0

loop do
  if munsters[munsters.keys[counter]]['gender'] == 'male'
    total_age += munsters[munsters.keys[counter]]['age']
  end
  counter += 1
  break if counter == munsters_keys.size
end

p total_age

total_male_age = 0

munsters.each_value do |details|
  total_male_age += details['age'] if details['gender'] == 'male'
end

p total_male_age