def century_int(year)
  if year.divmod(100)[1] >= 1
    century = year/100 + 1
  else
    century = year/100
  end
end

def century_suff(century)
  return (century.to_s + 'th') if [11,12,13,14,15,16,17,18,19].include?(century % 100)

  case century.to_s[-1]
  when '1' then century.to_s + 'st'
  when '2' then century.to_s + 'nd'
  when '3' then century.to_s + 'rd'
  else century.to_s + 'th'
  end
end

def century(year)
  cent = century_int(year)
  century_suff(cent)
end



p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'