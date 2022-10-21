#Create a method that takes ONE argument
#Input: string
#output: new_string with words in reverse order

#def reverse_sentence(string)
#  new_string = ''
#  new_string = string.split(' ').reverse.join(' ')
#end

def reverse_words(sentence)
  words = sentence.split(' ')
  reversed = []

  reversed = words.each do |word|
    if word.size >= 5
      reversed << word.reverse
    else
      reversed << word
    end
  end
  reversed.join(' ')
end




#puts reverse_sentence('Hello World') == 'World Hello'
#puts reverse_sentence('Reverse these words') == 'words these Reverse'
#puts reverse_sentence('') == ''
#puts reverse_sentence('    ') == '' # Any number of spaces results in ''

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS