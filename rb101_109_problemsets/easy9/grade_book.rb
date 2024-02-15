def get_grade(grade1, grade2, grade3)
  average = [grade1,grade2,grade3].reduce(:+)/3
  case average
  when 90..100 then puts 'A'
  when 80..90  then puts 'B'
  when 70..80  then puts 'C'
  when 60..70  then puts 'D'
  else              puts 'F'
  end
end




get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"