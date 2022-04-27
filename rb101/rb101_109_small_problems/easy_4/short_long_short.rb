def short_long_short(string_one, string_two)
  if string_one.size > string_two.size
    new_string = string_two + string_one + string_two
  else
    new_string = string_one + string_two + string_one
  end
end


p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"