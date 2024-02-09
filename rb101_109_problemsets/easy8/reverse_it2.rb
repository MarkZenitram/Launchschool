def reverse_words(words)
  reversed_words = []
  words.split.each do |word|
    if word.size > 4
      reversed_words << word.reverse
    else
      reversed_words << word
    end
  end
  reversed_words.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS