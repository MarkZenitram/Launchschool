def dot_separated_ip_address?(input_string)
  p dot_separated_words = input_string.split(".")
  return false unless dot_separated_words == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false if is_an_ip_number?(word) == false
  end
  return true
end

def is_an_ip_number?(string_number)
  string_number.to_i >= 0 && string_number.to_i <= 255
end

