def middle_word(string)
  words = string.split(' ')
  middle = words.size / 2

  if words[0] == nil
    return nil
  elsif words.size.odd?
    words[middle]
  else
    words[middle - 1] + ' ' + words[middle]
  end
end

p middle_word('I play pot of greed') == 'pot'
p middle_word('You have activated my trap card') == 'activated my'
p middle_word('word') == 'word'
p middle_word(' ') == nil