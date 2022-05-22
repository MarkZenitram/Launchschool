def palindromes(palindrome_string)
  palindrome_array = []
  array_of_substrings = substrings(palindrome_string)
  index = 0

  loop do
    palindrome_array << array_of_substrings[index] if array_of_substrings[index].reverse == array_of_substrings[index]
    index += 1
    break if index == array_of_substrings.size
  end

  p palindrome_array.delete_if { |string| string.size < 2}
end



def substrings(substring)
  all_substrings_array = []
  counter = 0

  loop do
    all_substrings_array << leading_substrings(substring[counter, substring.size])
    counter += 1
    break if counter == substring.size
  end
  all_substrings_array.flatten
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

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

