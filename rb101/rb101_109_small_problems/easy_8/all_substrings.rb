def substrings(substring)
  all_substrings_array = []
  counter = 0

  loop do
    all_substrings_array << leading_substrings(substring[counter, substring.size])
    counter += 1
    break if counter == substring.size
  end
  p all_substrings_array.flatten
end

def leading_substrings(string)
  index = 1
  substring_array = []
  substring_array << string[0]

  loop do
    break if substring_array.size == string.size
    substring_array << (substring_array[index - 1] + string[index])
    index += 1
  end
  substring_array
end



substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]