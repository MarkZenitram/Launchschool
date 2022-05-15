def sequence(integer)
  sequence_array = []
  counter = 1

  loop do
    sequence_array << counter
    break if counter == integer
    counter += 1
  end
  p sequence_array
end





p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]