# Validate that user input is in fact an integer
def integer?(input)
  input.to_i.to_s == input
end

# Validate that the user input a float
def float?(input)
  input.to_f.to_s == input
end

# Validate whether only integers OR floats are used
def int_or_float?(input)
  float?(input) || integer?(input)
end


p int_or_float?("25.5")
p int_or_float?("0")
