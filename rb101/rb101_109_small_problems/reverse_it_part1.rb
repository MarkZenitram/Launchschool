def reverse_sentence(sentence)
  sentence_array = sentence.split
  reversed_sentence_array = []
  counter = sentence_array.size - 1
  
  loop do
    p reversed_sentence_array << sentence_array[counter]
    counter -= 1
    break if counter < 0
  end
  p reversed_sentence_array.join(' ')
end


puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''