UPPERCASE_ABC = ('A'..'Z').to_a

def swapcase(string)
  index = 0
  swapped_string = ''

  loop do
    if UPPERCASE_ABC.include?(string[index])
      swapped_string += string[index].downcase
    else
      swapped_string += string[index].upcase
    end
    index += 1
    break if index >= string.size
  end
  p swapped_string
end







#swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'