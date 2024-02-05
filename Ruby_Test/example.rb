DIGITS = {1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
         6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0'}

def integer_to_string(int)
  array_of_numbers = []
  current_number = int

  loop do
    array_of_numbers << current_number.divmod(10)[1]
    break if current_number.divmod(10)[0] == 0
    current_number = current_number.divmod(10)[0]
  end

  string_numbers_array = array_of_numbers.reverse.each_with_object([]) { |num,arr| arr << DIGITS[num]}.join

end







p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'