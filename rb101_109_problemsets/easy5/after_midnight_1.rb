MINUTES_IN_A_DAY = 1440
HOURS_IN_A_DAY = 24
MINUTES_IN_AN_HOUR = 60

def time_of_day(time)
  hours, minutes = time.divmod(MINUTES_IN_AN_HOUR)
  if hours < -24
    hours = hours.divmod(HOURS_IN_A_DAY)[1]
  elsif hours < 0 && hours >= -24
    hours = HOURS_IN_A_DAY + hours
  elsif hours > 24
    hours = hours.divmod(24)[1]
  end
  format("%02d:%02d", hours, minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"