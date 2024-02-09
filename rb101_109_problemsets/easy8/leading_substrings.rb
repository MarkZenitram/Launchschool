def leading_substrings(string)
  arr = []
  length = 1

  loop do
    break if length > string.size
    arr << string[0,length]
    length += 1
  end
  arr
end

def substrings(string)
  index = 0
  length = string.size
  sub_strings = []
  final_substrings_array = []
  loop do
    sub_strings << string[index, length]
    index += 1
    length -= 1
    break if sub_strings.size == string.size
  end
  sub_strings.each do |string|
    final_substrings_array << leading_substrings(string)
  end
  final_substrings_array.flatten
end


def palindromes(str)
  substrings = substrings(str)
  palindromic_strings = []
  substrings.each do |substr|
    if substr.size > 1 && substr == substr.reverse
      palindromic_strings << substr
    end
  end
  palindromic_strings
end


p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
