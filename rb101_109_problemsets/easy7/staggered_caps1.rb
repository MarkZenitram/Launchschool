LOWER_CASE = ('a'..'z').to_a
UPPER_CASE = ('A'..'Z').to_a

def staggered_case(string)
  staggered_string = ''
  string.chars.each_with_index do |char, index|
    if index.even?
      staggered_string << char.capitalize
    else
      staggered_string << char.downcase
    end
  end
  staggered_string
end





p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'