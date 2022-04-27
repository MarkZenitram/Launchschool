DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  string_array = []
  counter = 0
  value = 0

  loop do
    break if counter == string.size
    value = value * 10 + DIGITS[string[counter]]
    counter += 1
  end
  
  p value
end

def string_to_signed_integer(signed_string)
  if signed_string[0] == '+'
    new_string = signed_string.delete(signed_string[0])
    string_to_integer(new_string)
    new_string
  elsif signed_string[0] == '-'
    new_string = signed_string.delete(signed_string[0])
    string_to_integer(new_string)
    new_string * -1
  else
    string_to_integer(signed_string)
  end
end


string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100