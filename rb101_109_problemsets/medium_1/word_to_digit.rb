DIGITS = %W(zero one two three four five six seven eight nine)

def word_to_digit(words)
  DIGITS.each_with_index do |dig, index|
    words.gsub!(dig, "#{index}")
  end
  p words
end




p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
