def xor?(argument_one, argument_two)
  if argument_one == true && argument_two == true
    return false
  elsif
    argument_one == false && argument_two == false
    return false
  else
    true
  end
end





p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false