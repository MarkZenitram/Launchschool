def swap(string)
  string_array = []
  string_array = string.split(' ')
  counter = 0
  reversed_string_array = []
  middle_string = ''

  loop do
    if string_array[counter].size > 3
      middle_string = string_array[counter][1..-2]
      reversed_string_array << string_array[counter][-1] + middle_string + string_array[counter][0]
    else
      reversed_string_array << string_array[counter].reverse
    end
    counter += 1
    break if counter == string_array.size
  end
  p reversed_string_array.join(' ')
end


p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'