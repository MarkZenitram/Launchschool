def letter_percentages(string)
  string_size = string.size
  lowercase = string.count('a-z')
  uppercase = string.count('A-Z')
  neither = string_size - (lowercase + uppercase)
  lowercase_percent = ((lowercase.to_f / string_size) * 100).round(1)
  uppercase_percent = ((uppercase.to_f / string_size) * 100).round(1)
  neither_percent = (neither.to_f / string_size) * 100
  p hsh = {lowercase: lowercase_percent, uppercase: uppercase_percent, neither: neither_percent}
end




#letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
#letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
#letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
letter_percentages('abcdefGHI')