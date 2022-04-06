#Write a method that takes one integer argument, which may be positive, negative, or zero. 
# This method returns true if the number's absolute value is odd. 
#You may assume that the argument is a valid integer value.

def odd?(integer)
  if integer % 2 != 0 || integer == 1
    return true
  end
end


def is_odd?(number)
  number % 2 == 1
end

p is_odd?(1)
p is_odd?(5)
p is_odd?(0)
p is_odd?(2)