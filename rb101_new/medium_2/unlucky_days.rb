require 'date'

def friday_13th(year)
  current_month = 1
  total_fridays = 0
  date = Date.new(year,current_month,13)
  loop do
    date = Date.new(year, current_month, 13)
    if date.friday?
      total_fridays += 1
      current_month += 1
    else
      current_month +=1
    end
    break if current_month > 12
  end
  total_fridays
end



p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2