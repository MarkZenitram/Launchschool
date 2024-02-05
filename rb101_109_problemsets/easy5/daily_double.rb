def crunch(string)
  current_char = ''
  previous_char = ''
  new_string = []
  string.chars do |char|
    current_char = char
    new_string << char unless current_char == previous_char
    previous_char = current_char
  end
  p new_string.join
end


p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''