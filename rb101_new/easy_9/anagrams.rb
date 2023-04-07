def anagram?(word1, word2)
  word1.chars.sort == word2.chars.sort
end

def anagrams(arr)
  anagrams = []
  counter = 0
  index = 0
  loop do
    loop do
      anagrams[index] << arr[counter] if anagram?(arr[index], arr[counter])
      counter += 1
      break if counter == arr.size
    end
    index += 1
  end
  p anagrams
end


words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']



p anagrams(words)
