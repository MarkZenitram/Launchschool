counter = 1

loop do
  if counter.odd?
    puts counter
  end
  counter += 1
  break if counter > 99
end
