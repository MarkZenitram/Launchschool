def word_cap(string)
  index = 0
  new_string = []
  string_array = string.split(' ')

  string_array.each do |word|
    new_string << word.capitalize
  end
  new_string.join(' ')

end




p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'