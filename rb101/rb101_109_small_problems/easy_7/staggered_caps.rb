UPPERCASE_ABC = ('A'..'Z').to_a

def staggered_case(string)
  index = 0
  staggered_string = string.downcase

  loop do
    staggered_string[index] = string[index].upcase
    index += 2
    break if index >= string.size
  end
  p staggered_string
end


p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'