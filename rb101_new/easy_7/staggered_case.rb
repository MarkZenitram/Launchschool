def staggered_case(words)
  counter = 0
  new_string = ''
  words.chars do |char| 
    if counter.even?
      new_string << char.capitalize
    else
      new_string << char.downcase
    end
    counter += 1 unless char =~ /[^a-zA-Z]/
  end
  p new_string
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'