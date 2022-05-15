def center_of(string)
  index = 0
  center_string = ''

  if string.size.even?
    center_string = string[(string.size / 2) - 1, 2]
  else
    center_string = string[string.size / 2]
  end
  p center_string
end



p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'