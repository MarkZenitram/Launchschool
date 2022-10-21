#Create a method that takes ONE argument -> string of one or more words
#INput: string of >= 1 word
#Output: returns string with words with >= 5 chars reversed

def reverse_words(words)
  words_arr = []
  words.split(' ').each do |word|
    if word.size >= 5
      words_arr << word.reverse
    else
      words_arr << word
    end
  end
  words_arr.join(' ')
end




puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS