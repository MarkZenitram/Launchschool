def get_grade(grade_one, grade_two, grade_three)
  grades = grade_one + grade_two + grade_three
  average = grades / 3
  case average
    when 90..100 then 'A'
    when average >= 80 && average < 90 then puts 'B'
    when average >= 70 && average < 80 then puts 'C'
    when average >= 60 && average < 70 then puts 'D'
    else 'F'
    end
end



p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"