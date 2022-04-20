def reverse_words(words)
  words_array = words.split
  reversed_array = []
  counter = 0

  loop do
    if words_array[counter].size >= 5
      reversed_array << words_array[counter].reverse
    else
      reversed_array << words_array[counter]
    end
    counter += 1
    break if reversed_array.size == words_array.size
  end
  p words = reversed_array.join(' ')
end






puts reverse_words('Professional') == 'lanoisseforP'
puts reverse_words('Walk around the block') == 'Walk dnuora the kcolb'
puts reverse_words('Launch School') == 'hcnuaL loohcS'