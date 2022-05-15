def leading_substrings(string)
  index = 1
  substring_array = []
  substring_array << string[0]

  loop do
    break if substring_array.size == string.size
    substring_array << (substring_array[index - 1] + string[index])
    index += 1
  end
  p substring_array
end


#leading_substrings('abc') == ['a', 'ab', 'abc']
#leading_substrings('a') == ['a']
#p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

p leading_substrings('abc 123')