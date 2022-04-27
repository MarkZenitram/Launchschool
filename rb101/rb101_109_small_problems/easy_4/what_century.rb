def century(year)
  century = year / 100 + 1
  century = century - 1 if year % 100 == 0
  
  if century.to_s[-2..-1] == '11' || century.to_s[-2..-1] == '12' || century.to_s[-2..-1] == '13'
    puts century.to_s + 'th'
  elsif century.to_s[-1] == '1'
    puts century.to_s + 'st'
  elsif century.to_s[-1] == '2'
    puts century.to_s + 'nd'
  elsif century.to_s[-1] == '3'
    puts century.to_s + 'rd'
  else
    puts century.to_s + 'th'
  end
end




century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'
