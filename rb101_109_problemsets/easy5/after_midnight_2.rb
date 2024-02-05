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

def after_midnight(time)
  hour = time[0,2].to_i
  mins = time[3,2].to_i
  if hour == 24
    return 0
  else
    mins += (hour * MINUTES_IN_AN_HOUR)
  end
end

def before_midnight(time)
  hour = time[0,2].to_i
  mins = time[3,2].to_i
  if hour == 24 || (mins == 0 && hour == 0)
    return 0
  else
    mins = MINUTES_IN_A_DAY - (mins + (hour * MINUTES_IN_AN_HOUR))
  end
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0