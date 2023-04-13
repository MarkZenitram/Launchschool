def diamond(number)
  half = (number/2.to_f).round
  counter = 0
  second_counter = 0
  1.upto(half) do |x|
    puts ('*' * (x + counter)).center(number)
    counter += 1
  end
  if number > 1 
    half.downto(1) do |x|
      if x.odd?
        puts ('*' * x).center(number)
      end
    end
  end
end

diamond(1)
diamond(3)
diamond(5)


