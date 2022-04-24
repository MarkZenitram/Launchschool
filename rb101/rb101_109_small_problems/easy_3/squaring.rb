def multiply (number_one, number_two)
  number_one * number_two
end


def square(number)
  multiply(number,number)
end

def cubed(number)
  multiply(number,number) * number
end

p cubed(3)

p square(5) == 25
p square(-8) == 64