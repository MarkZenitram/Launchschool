def after_midnight(time)
  hours = time[0,2].to_i
  minutes = time[3,2].to_i
  hours_to_mins = hours * 60
  total_mins = hours_to_mins + minutes

  if total_mins == 1440
    0
  else
    total_mins
  end
end

def before_midnight(time)
  hours = time[0,2].to_i
  minutes = time[3,2].to_i
  hours_to_mins = hours * 60
  total_mins = hours_to_mins + minutes
  p actual_minutes = 1440 - total_mins
  
  if total_mins == 1440 || actual_minutes == 1440
    0
  else
    actual_minutes
  end
end



after_midnight('00:00') == 0
p before_midnight('00:00') == 0
after_midnight('12:34') == 754
p before_midnight('12:34') == 686
after_midnight('24:00') == 0
p before_midnight('24:00') == 0