def decrease(counter)
  counter -= 1
end

10.times do
  counter = 10
  puts counter
  decrease(counter)
end

puts 'LAUNCH!'