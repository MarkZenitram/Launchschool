def leading_substrings(string)
  string_arr = []
  counter = 1
  loop do
    string_arr << string[0, counter]
    counter += 1
    break if counter > string.size
  end
  string_arr
  end

def substrings(string)
  all_substrings = []
  loop do
    all_substrings.concat(leading_substrings(string))
    string = string.delete(string[0])
    break if string == ''
  end
    all_substrings
  end


substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]