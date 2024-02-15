def opposite_sides?(half1, half2)
  counter1 = 0
  counter2 = -1

  loop do
    if half1[counter1] != half2[counter2]
      counter1 += 1
      counter2 -= 1
    else
      return false
      break
    end
    break if counter1 >= half1.size
  end
  return true
end



def balanced?(str)
  parentheses = str.delete("^()").chars
  total_size = parentheses.size
  half_size = total_size/2
  side1, side2 = parentheses[0, half_size], parentheses[half_size, half_size]

  if parentheses.empty?
    return true
  end

  if parentheses.size % 2 == 1 || parentheses[0] == ")"
    return false
  end

  opposite_sides?(side1, side2)
end





p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ())(is() up') == false