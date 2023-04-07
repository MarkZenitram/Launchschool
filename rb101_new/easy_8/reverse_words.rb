def reverse_words(words)
  reversed_words = words.split(' ')
  reversed_words = reversed_words.map do |word|
    if word.size >= 5
      word.reverse
    else
      word
    end
  end
  reversed_words.join(' ')
end




#puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS