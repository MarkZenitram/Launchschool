i = 0
loop do
  i = i + 2
  if i == 4
    next #skip rest of code in this iteration
  end
  puts i
  if i == 10
    break
  end
end