def palindromic_number?(number)
  p reverse_numbers = number.to_s.reverse
  return reverse_numbers.to_f == number
end

p palindromic_number?(010)
p palindromic_number?(0102)
p palindromic_number?(123123)

#p palindromic_number?(34543) == true
#p palindromic_number?(123210) == false
#p palindromic_number?(22) == true
#p palindromic_number?(5) == true