def penultimate(string)
  penultimate_word = ''
  string_array = string.split
  penultimate_word = string_array[-2]
  p penultimate_word
end








penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'