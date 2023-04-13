def balanced?(string)
  parentheses = []
  string.chars { |char| parentheses << char if char == '(' || char == ')'}
  if parentheses.size.odd? || parentheses[0] == ')' || parentheses[-1] == '('
    return false
  else
    return true
  end
end



p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false