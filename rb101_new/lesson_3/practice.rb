def prompt(string)
  puts ">> #{string}"
end

def sum_of_ints(int)
  (1..int).inject(:+)
end

def prod_of_ints(int)
  (1..int).inject(:*)
end

p prod_of_ints(3)

prompt('Please enter an interger greater than 0')
integer = gets.chomp.to_i

prompt("Enter 's' to compute the sum and 'p' for the product")
action = gets.chomp


test