words = "the flintstones rock"

def titleize(title_string)
  counter = 0
  string_titles_array = title_string.split(" ")
  new_string = ''
  loop do
    new_string += string_titles_array[counter].capitalize!
    counter += 1
    break if counter == string_titles_array.size
  end
  string_titles_array
  new_string
end

p titleize(words)


# Answer key
words.split.map { |word| word.capitalize }.join(' ')