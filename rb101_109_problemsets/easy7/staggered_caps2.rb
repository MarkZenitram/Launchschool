LOWER_CASE = ('a'..'z').to_a
UPPER_CASE = ('A'..'Z').to_a

def staggered_case(string)
  staggered_string = ''
  counter = 0
  string.chars.each_with_index do |char|
    if counter.even? && char =~ /[a-zA-Z]/
      staggered_string << char.upcase
      counter += 1
    elsif counter.odd? && char =~ /[a-zA-Z]/
      staggered_string << char.downcase
      counter += 1
    else
      staggered_string << char
    end
  end
  staggered_string
end


p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'