MINS_IN_DAY = 1440
HOUR = 60

def time_of_day(mins)
  if mins > 1440
    hours, minutes = mins.divmod(HOUR)
    hours = hours.divmod(24)[1]
  elsif mins > 0 && mins < 1440
    hours, minutes = mins.divmod(HOUR)
  elsif mins < -1440
    hours, minutes = mins.divmod(HOUR)
    hours = hours.divmod(24)[1]
  elsif mins < 0
    hours, minutes = mins.divmod(HOUR)
    hours = hours + 24
  else
    hours, minutes = 0,0
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


##def time_in_24_hour_format(minutes)
#  hours = (minutes / 60) % 24
#  minutes = minutes % 60
#  return format("%02d:%02d", hours, minutes)
#end
