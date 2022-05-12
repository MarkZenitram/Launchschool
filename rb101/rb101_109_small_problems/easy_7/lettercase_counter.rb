def letter_case_count(string)
  index = 0
  counts = { lowercase: 0, uppercase: 0, neither: 0 }
  abc_capitals = ('A'..'Z').to_a
  abc_lowercase = ('a'..'z').to_a

  while index < string.size
    if abc_capitals.include?(string[index])
      counts[:uppercase] += 1
    elsif
      abc_lowercase.include?(string[index])
      counts[:lowercase] += 1
    else
      counts[:neither] += 1
    end
    index += 1
  end

  p counts
end



letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }