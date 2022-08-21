require 'date'

def friday_13th(year)
  fridays = 0
  counter = 0
  date = Date.new(year, 1, 1)

  loop do
    if (date + counter).friday? && (date + counter).day == 13
      fridays += 1
    end
    counter += 1
    break if counter == 365
  end
  p fridays
end



p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2