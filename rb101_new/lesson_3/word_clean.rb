def cleanup(string)
  new_string = string.gsub(/[^a-zA-z]/, ' ')
  clean_string = ''
  counter = 0
  new_string.chars do |char|
    counter += 1
    break if counter >= new_string.size
    clean_string << new_string[counter] unless new_string[counter] && char == ' '
    
  end
  p clean_string
end



p cleanup("---what's my +*& line?") == ' what s my line '