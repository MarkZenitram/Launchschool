def words(arr)
  list_of_options = arr.map { |word| word.chars.sort }.uniq
  array_of_anagrams = []
  list_of_options.size.times { |_| array_of_anagrams << [] }
  list_of_options.each_with_index do |word, index|
    arr.each do |string_word|
      if string_word.chars.sort == word
        array_of_anagrams[index] << string_word
      end
    end
  end
  array_of_anagrams
end


wordss =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

words(wordss)

