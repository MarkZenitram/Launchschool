def word_sizes(str)
  split_string = str.split(' ')
  scrubbed_string = split_string.map { |word| word.gsub(/[^a-zA-Z]/, '')}
  string_size_arr = scrubbed_string.map { |x| x.size}.sort
  count_hash = {}
  counter = 0
  loop do
    break if string_size_arr.size == 0
    count_hash[string_size_arr[counter]] = string_size_arr.count(string_size_arr[counter])
    counter += 1
    break if counter >= string_size_arr.size
  end
  p count_hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}