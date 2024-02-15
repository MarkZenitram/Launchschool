def letter_percentages(str)
  str_size = str.size.to_f
  letter_counts = { lowercase: 0, uppercase: 0, neither: 0 }
  str.chars do |char|
    if char =~ /[a-z]/
      letter_counts[:lowercase] += 1
    elsif char =~ /[A-Z]/
      letter_counts[:uppercase] += 1
    else
      letter_counts[:neither] += 1
    end
  end
  letter_counts.each { |k,v| letter_counts[k] = (v/str_size)* 100 }
  p letter_counts
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }