#Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

# input: one positive integer
# output: return a list of digits in the number
# Create an array that stores the digits in the integer

def list_of_digits(integer)
  digits = []
  loop do
    p new_integer = integer.divmod(10)
    p digits << new_integer.pop
    break if integer == nil
  end
  digits
end

p list_of_digits(100)


  