munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munster_keys = munsters.keys
counter = 0

loop do
  break if counter == munster_keys.size

  case munsters[munster_keys[counter]]["age"]
  when 0...18
    munsters[munster_keys[counter]]["age_group"] = "kid"
  when 18...65
    munsters[munster_keys[counter]]["age_group"] = "adult"
  else
    munsters[munster_keys[counter]]["age_group"] = "senior"
  end
  counter += 1
  p munsters
end
