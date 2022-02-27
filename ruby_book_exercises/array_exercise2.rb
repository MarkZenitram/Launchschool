arr = ["b", "a"]
  p arr = arr.product([Array(1..3)])
  p arr.first.delete(arr.first.last)