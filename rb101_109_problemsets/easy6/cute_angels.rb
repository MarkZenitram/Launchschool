DEGREE = "\xC2\xB0"
ONE_DEGREE_TO_MIN = 60
ONE_MIN_TO_SEC = 60

def dms(num)
  degree = num.to_i
  minutes_in_float = (num - degree) * ONE_DEGREE_TO_MIN
  minutes_in_int = ((num - degree) * ONE_DEGREE_TO_MIN).to_i
  seconds = (minutes_in_float - minutes_in_int) * ONE_MIN_TO_SEC

  p format(%(#{degree}#{DEGREE}%02d'%02d"), minutes_in_int, seconds)
end

# All test cases should return true
puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")