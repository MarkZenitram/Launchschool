PARENTHESIS = ['(', ')']

def balanced?(string)
  string_array = string.chars

  #remove everything but()
  string_array = string_array.delete_if { |char| PARENTHESIS.include?(char) == false}

  #total (
  count_1 = string_array.count {|char| char == '('}
  #total ) 
  count_2 = string_array.count {|char| char == ')'}

  if string_array.first == ')'
    return false
  elsif
    string_array.last == '('
    return false
  elsif count_1 != count_2
    return false
  else
    return true
  end
end





p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false