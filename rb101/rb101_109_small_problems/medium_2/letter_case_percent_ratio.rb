LOWER = ('a'..'z').to_a
UPPER = ('A'..'Z').to_a

def letter_percentages(string)
  counts = {}
  percentages = {}

  characters = string.chars
  total_chars = string.size

  counts[:lowercase] = characters.count { |char| LOWER.include?(char) }.to_i
  counts[:uppercase] = characters.count { |char| UPPER.include?(char) }.to_i
  counts[:neither] = (total_chars - counts[:lowercase] - counts[:uppercase]).to_i

  calculate_percentages(percentages, counts, total_chars)

  p percentages
end

def calculate_percentages(percentages, counts, length)
  percentages[:lowercase] = ((counts[:lowercase].to_f / length) * 100)
  percentages[:uppercase] = ((counts[:uppercase].to_f / length) * 100)
  percentages[:neither]   = ((counts[:neither].to_f / length) * 100)
end

letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

