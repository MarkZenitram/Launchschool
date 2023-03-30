def swap(string)
  str_arr = string.split(' ')
  new_arr = []
  letter_one = ''
  letter_two = ''
  current_word = ''
  counter = 0
  loop do
    current_word = str_arr[counter]
    letter_one = str_arr[counter][0]
    letter_two = str_arr[counter][-1]
    current_word[0] = letter_two
    current_word[-1] = letter_one
    new_arr << current_word
    counter += 1
    break if counter == str_arr.size
  end
  new_arr.join(' ')
end




p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
pswap('a') == 'a'