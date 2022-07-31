str = File.read('gutenberg.txt')

def text_splitter(text)
  text.split(/\.|\?|!/)
end

split_text = text_splitter(str)

def longest_sentence(sentence)
  word_array = []
  count = 0

  loop do
    word_array << sentence[count].split(' ')
    count += 1
    break if word_array.size == count
  end

  word_array
end

def word_counter(sentence)
  word_array = []
  index = 0

  loop do
    word_array << sentence[index].split(' ').count
    index += 1
    break if index == sentence.size
  end
  word_array.max
end

p longest_word = word_counter(split_text)
p long_sentence = longest_sentence(split_text).join(' ')

#puts "The longest sentence in your text is #{longest}"

#p word_counter(split_text)
