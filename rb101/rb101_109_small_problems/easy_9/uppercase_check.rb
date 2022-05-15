UPPERCASE_ALPHA = ('A'..'Z').to_a
LOWERCASE_ALPHA = ('a'..'z').to_a

def uppercase?(string)
  index = 0
  
  loop do
    if LOWERCASE_ALPHA.include?(string[index])
      return false
    elsif UPPERCASE_ALPHA.include?(string[index])
      next
    else
      return true
    end
    
    index += 1
    break if index == string.size || false
  end
end






#p uppercase?('t') == false
#p uppercase?('T') == true
p uppercase?('Four Score') == false
#uppercase?('FOUR SCORE') == true
#p uppercase?('4SCORE!') == true
#p uppercase?('') == true