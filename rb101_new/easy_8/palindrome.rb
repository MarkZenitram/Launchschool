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
  p all_substrings
end

#def palindromes(string)
#  all_substrings = substrings(string)
#  all_substrings
#  all_substrings.delete_if { |sub_str| sub_str.size == 1 }
#  all_substrings.select { |sub_str| sub_str == sub_str.reverse}
#  all_substrings
#end
#
#
##palindromes('abcd') == []
##palindromes('madam') == ['madam', 'ada']
# palindromes('hello-madam-did-madam-goodbye') == [
#  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#  '-madam-', 'madam', 'ada', 'oo'
#]
substrings('knitting cassettes')