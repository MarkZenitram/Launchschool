def real_palindrome?(string)
  abcs = ('A'..'Z').to_a + ('a'..'z').to_a + ['1234567890']
  abcs = abcs.join
  counter = 0
  new_array = []

  loop do
    new_array << string[counter] if abcs.include?(string[counter])
    counter += 1
    break if counter == string.size
  end
  new_array.join.downcase == new_array.join.downcase.reverse
end



p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false