text = File.read("pg84.txt")

all_sentences = text.split(/\.|\?|!/)

largest_sentence = [0, 0]
all_sentences.each_with_index do |sentence, index|
  if sentence.split(' ').size > largest_sentence[0]
    largest_sentence[0] = sentence.split(' ').size
    largest_sentence[1] = index
  else
    next
  end
end


puts "The longest sentence is #{largest_sentence[0]} words long"
puts "The sentence is:"
puts "#{all_sentences[largest_sentence[1]]}"