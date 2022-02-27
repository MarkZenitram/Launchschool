my_hash = {
  loop_one: "one",
  loop_two: "two",
  loop_three: "three"
}

my_hash.each_key { |k| puts k }
my_hash.each_value { |v| puts v }
my_hash.each_pair { |k, v| puts "Hello these are keys #{k} and these are values #{v}!"}