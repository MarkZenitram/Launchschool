arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

new_array = []

arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    return b <=> a
  end
end
