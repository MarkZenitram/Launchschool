def word_sizes(string)
  hash_string = {}
  counter = 0

  string_array = string.split(' ').map do |x| #converts string into an array of strings then convers this into size of each string
    x.size
  end
  
  uniq_size_array = string_array.uniq.sort #creates a new array of uniq word counts and sorts from lowest word count to highest

  loop do
    break if hash_string.size == uniq_size_array.size
    hash_string[uniq_size_array[counter]] = string_array.count(uniq_size_array[counter])
    counter += 1
  end
  p hash_string

end



p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}