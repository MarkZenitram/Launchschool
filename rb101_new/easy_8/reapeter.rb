def repeater(string)
  new_string = ''
  string.chars { |char| new_string << (char * 2) }
  new_string
end

def double_consonants(string)
  new_string = ''
  string.chars do |char|
    if char =~ /[b-df-hj-np-tv-z]/i
      new_string << repeater(char)
    else
      new_string << char
    end
  end
  p new_string
end





p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""