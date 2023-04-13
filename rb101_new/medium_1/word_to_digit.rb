NUMBERS = %w(zero one two three four five six seven eight nine)


def remove_punct(word)

end

def word_to_digit(sentence)
  NUMBERS.each_with_index do |word, index|
    sentence.gsub!(/\b#{word}\b/, index.to_s)
  end
  sentence
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')