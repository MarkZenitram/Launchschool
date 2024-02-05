def word_sizes(string)
  counter = 1
  strings_array = string.split.map { |char| char.delete('^a-zA-Z0-9')}
  hash = strings_array.each_with_object({}) do |string, hsh|
    if hsh.keys.include?(string.size)
      hsh[string.size] += 1
    else
      hsh[string.size] = 1
    end
  end
  p hash
end




p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}