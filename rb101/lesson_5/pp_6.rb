munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}


counter = 0

loop do
  puts "#{munsters.keys[counter]} is a #{munsters.values[counter]['age']}-year-old #{munsters.values[counter]['gender']}"
  counter += 1
  break if counter == munsters.values.size
end

munsters.each_pair do |name, details|
  puts "#{name} is a #{details['age']}-year-old #{details['gender']}"
end

