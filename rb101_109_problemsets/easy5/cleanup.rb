def cleanup(string)
  string = string.gsub!(/[^a-zA-Z0-9]/, ' ').chars
  new_string = []
  current_char = ''
  previous_char = ''
  string.each do |char|
    current_char = char
    new_string << char unless current_char == ' ' && previous_char == ' '
    previous_char = current_char
  end
  new_string.join
end

p cleanup("---what's my +*& line?") == ' what s my line '