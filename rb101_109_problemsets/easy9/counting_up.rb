def sequence(num)
  seq_array = []
  1.upto(num) { |num| seq_array << num }
  seq_array
end





p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]