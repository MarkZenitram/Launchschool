DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(integer)
  string_number = ''
  counter = 0
  divmod_array = []
  divmod_array = integer.divmod(10) 


  loop do
    string_number = DIGITS[divmod_array[-1]] + string_number
    divmod_array = divmod_array[0].divmod(10)
    break if divmod_array[0] == 0 && divmod_array[-1] == 0
  end
  p string_number
end

integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'