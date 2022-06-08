arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
new_arr = []
new_arr = arr.map do |new_arr|
  new_arr.select do |x|
    x % 3 == 0
  end
end
p new_arr