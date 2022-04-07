question = 'How many times does a particular character appear in this sentence?'

def select_letter(your_string, character)
  new_string = ''
  counter = 0

  loop do
    break if counter == your_string.size
    
    if your_string[counter] == character
      new_string << your_string[counter]
    end

    counter += 1
  end

  new_string
end


p select_letter(question, 'a') # => "aaaaaaaa"
p select_letter(question, 't') # => "ttttt"
p select_letter(question, 'z') # => ""


def select_letter(sentence, character)
  selected_chars = ''
  counter = 0

  loop do
    break if counter == sentence.size
    current_char = sentence[counter]

    if current_char == character
      selected_chars << current_char
    end

    counter += 1
  end

  selected_chars
end