def calculate_bonus(positive_int, boolean)
  if boolean == true
    bonus = positive_int / 2
  else
    bonus = 0
  end
  bonus
end

def calculate_bonus2(positive_int2, boolean2)
  boolean2 ? (positive_int2/2) : 0
end



puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000


puts calculate_bonus2(2800, true) == 1400
puts calculate_bonus2(1000, false) == 0
puts calculate_bonus2(50000, true) == 25000