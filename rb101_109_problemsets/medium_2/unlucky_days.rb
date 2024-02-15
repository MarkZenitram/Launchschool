require 'date'

def first_friday(year)
  date = Date.new(year,1,1)
  loop do
    date += 1
    break if date.friday?
  end
  date
end

def friday_13th(year)
  date = first_friday(year)
  count_friday_13ths = 0
  loop do
    if date.friday? && date.mday == 13
      count_friday_13ths += 1
    end
    date += 7
    break if date.year > year
  end
  count_friday_13ths
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2