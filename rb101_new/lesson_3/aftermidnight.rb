def after_midnight(time)
  hours, mins = time.split(':')
  hours = hours.to_i
  mins = mins.to_i
  
  if hours == 24
    return 0
  else
    hours = hours * 60
    total = mins + hours
  end
end

def before_midnight(time)
  hours, mins = time.split(':')
  hours = hours.to_i
  mins = mins.to_i
  
  if hours == 24 || hours == 0 && mins == 0
    return 0
  else
    hours = hours * 60
    total = 1440 - (mins + hours)
  end
end




#after_midnight('00:00') == 0
p before_midnight('00:00') == 0
#after_midnight('12:34') == 754
p before_midnight('12:34') == 686
#after_midnight('24:00') == 0
p before_midnight('24:00') == 0