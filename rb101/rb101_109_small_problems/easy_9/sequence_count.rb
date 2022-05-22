def sequence(count, integer)
  sequence_array = []
  index = 0
  sequence_array << integer unless count == 0

  while index < (count - 1) && count != 0
    p sequence_array[index + 1] = (integer + sequence_array[index])
    index += 1
  end
  p  sequence_array
end



p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []