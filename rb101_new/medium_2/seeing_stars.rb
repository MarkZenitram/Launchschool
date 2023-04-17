def star(num)
  p lines = ' ' * num
  half = num/2
  1.upto(half) do |x|
    puts ' ' * x
  end
end


p star(7)
