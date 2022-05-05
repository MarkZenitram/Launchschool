DEGREE = "\xC2\xB0"

def dms(decimal_degrees)
  if decimal_degrees > 360
    decimal_degrees = decimal_degrees - 360
  elsif decimal_degrees < 0
    decimal_degrees = decimal_degrees + 360 until decimal_degrees > 0
  else
    decimal_degrees
  end

  int_degree = decimal_degrees.to_i
  minutes_float = ((decimal_degrees - int_degree) * 60).to_f
  minutes_int = minutes_float.to_i
  minute_seconds = minutes_float - minutes_int
  seconds = (minute_seconds * 60)
  
  puts '%' + format("(%02d#{DEGREE}%02d'%02d", int_degree, minutes_float, seconds) + '")'

end

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00") 
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
dms(400) == %(40°00'00")
dms(-40) == %(320°00'00")
dms(-420) == %(300°00'00")

