def double_consonants(str)
  repeated_str = ''
  str.chars do |char|
    if char =~ /[bcdfghjklmnpqrstvwxyz]/i
      repeated_str << char*2
    else
      repeated_str << char
    end
  end
  repeated_str
end



p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""