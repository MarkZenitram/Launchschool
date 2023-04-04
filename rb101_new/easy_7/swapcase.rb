def swapcase(word)
  swapped_case = ''
  word.chars do |char|
    if char.upcase == char
      swapped_case << char.downcase
    elsif char.downcase == char
      swapped_case << char.upcase
    else
      swapped_case << char
    end
  end
  swapped_case
end


# swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'