def repeater(string)
  index = 0
  doubled_string_array = []

  loop do
    break if index == string.size
    doubled_string_array << string[index] * 2
    index += 1
  end
  p doubled_string_array.join
end



p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''