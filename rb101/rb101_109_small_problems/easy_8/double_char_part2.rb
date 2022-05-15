CONSONANT = %w[b c d f g h j k l m n p q r s t v w x y z B C D F G H J K L M N P Q R S T V W X Y Z]

def double_consonants(string)
  double_consonants_array = []
  index = 0

  loop do
    break if index == string.size
    if CONSONANT.include?(string[index])
      double_consonants_array << string[index] * 2
    else
      double_consonants_array << string[index]
    end
    index += 1
  end

  p double_consonants_array.join
end




p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""