def swapcase(string)
  swap_string = ''
  string.chars.each do |char|
    if char =~ /[a-z]/
      swap_string << char.upcase
    elsif char =~ /[A-Z]/
      swap_string << char.downcase
    else
      swap_string << char
    end
  end
  swap_string
end


p swapcase('PascalCase') == 'pASCALcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'