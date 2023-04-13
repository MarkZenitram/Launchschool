text = File.read('pg84.txt')

sentences = text.split(/\.|\?|!/)
longest = sentences.max_by { |x| x.split.size }
longest = longest.strip
p num_of_words = longest.split.size