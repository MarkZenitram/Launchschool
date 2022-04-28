def ascii_value(string)
  counter = 0
  total = 0

  if string == ''
    0
  else
    loop do
      total += string[counter].ord
      counter += 1
      break if counter == string.size
    end
  end
  p total
end


p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0