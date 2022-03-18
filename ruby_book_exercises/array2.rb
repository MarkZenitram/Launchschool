def string_lengths(sentence)
  words = sentence.split
  word_lengths = []
  counter = 0

  while counter < words.size do
    word_lengths << words[counter].length
    counter += 1
  end

  p words.size
  p word_lengths
end

string_lengths("Hi you thee marks")